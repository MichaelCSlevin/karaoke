require 'minitest/autorun'
require 'minitest/rg'

require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest_hash = {
      "id" => 1,
      "name" => "Michael",
      "favourite_song" => "End of the World",
      "funds" => 30
    }


     @guest1 = Guest.new(@guest_hash)
  end

  def test_initialize
    assert_equal(1, @guest1.id)
    assert_equal("Michael", @guest1.name)
    assert_equal("End of the World", @guest1.favourite_song)
    assert_equal(30, @guest1.funds)
  end

end
