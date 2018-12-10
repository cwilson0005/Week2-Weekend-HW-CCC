require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Conor Wilson", "Redbone - Childish Gambino", 230.54)
  end

  def test_return_guest_name
    assert_equal("Conor Wilson", @guest.guest_name)
  end

  def test_return_fav_song
    assert_equal("Redbone - Childish Gambino", @guest.fav_song)
  end

  def test_return_purse
    assert_equal(230.54, @guest.purse)
  end

end
