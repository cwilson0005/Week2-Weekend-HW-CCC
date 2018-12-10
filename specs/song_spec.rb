require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song = Song.new("Redbone - Childish Gambino")
  end

  def test_return_song_name
    assert_equal("Redbone - Childish Gambino", @song.song_name)
  end

end
