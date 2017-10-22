require 'minitest/autorun'
require 'minitest/rg'

require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < MiniTest::Test

  def setup
    @room_hash = {
      "id" => 1,
      "room_name" => "Dolly",
      "capacity" => 2
    }

    @guest_hash = {
      "id" => 1,
      "name" => "John",
      "favourite_song"  => "Classical Stuff",
      "funds" => 1000
    }

    @guest_hash2 = {
      "id" => 2,
      "name" => "Michael",
      "favourite_song" => "End of the World",
      "funds" => 20
    }

    @guest_hash3 = {
      "id" => 3,
      "name" => "Paul",
      "favourite_song" => "Boys, Boys, Boys (are Looking for a Good Time)",
      "funds" => 36_000
    }


    @song_hash1 = {
      "id" => "1",
      "title" => "Dancing Queen"
    }

    @room1 = Room.new(@room_hash)
    @john = Guest.new(@guest_hash)
    @michael = Guest.new(@guest_hash2)
    @abba = Song.new(@song_hash1)
    @paul = Guest.new(@guest_hash3)

  end

  def test_initialize
    assert_equal(1, @room1.id)
    assert_equal("Dolly", @room1.room_name)
    assert_equal(2, @room1.capacity)
  end

  def test_add_guest_to_room
    @room1.add_guest(@john) #variables in brackets denote what gets passed in as a placeholder in the class method
    @room1.add_guest(@michael)
    assert_equal(2, @room1.guests.length)
  end

  def test_remove_guest_from_room
    @room1.add_guest(@john)
    @room1.remove_guest(@john)
    assert_equal(0, @room1.guests.length)
  end

  def test_add_song_to_room
    @room1.add_song(@abba)
    assert_equal(1, @room1.songs.length)
  end

  def test_add_guest__room_full
    @room1.add_guest(@john)
    @room1.add_guest(@michael)
    exception = assert_raises Exception do
      @room1.add_guest(@paul)
     #http://ieftimov.com/exception-handling-and-testing
    end
    assert_equal("Ah canna add Paul to the room, captain: she's fit tae burstin'!", exception.message)
  end

end
