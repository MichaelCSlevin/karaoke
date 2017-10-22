require 'minitest/autorun'
require 'minitest/rg'

require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song_hash = {
      "id" => 1,
      "title" => "Bad Moon Rising"
    }

    @song1 = Song.new(@song_hash)

  end

  def test_initialize
    assert_equal(1, @song1.id)
    assert_equal("Bad Moon Rising", @song1.title)
  end
  # 

end
