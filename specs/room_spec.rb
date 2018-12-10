require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < MiniTest::Test

  def setup
    guests_in_room = [
      Guest.new("Conor Wilson", "Redbone - Childish Gambino", 230.54),
      Guest.new("Paula Redpath", "Angels - Robbie Williams", 100.84),
      Guest.new("James Karpath", "Around the World - Daft Punk", 43.95),
      Guest.new("Frank Reynolds", "Panama - Van Halen", 435.75)
    ]
    @room1 = Room.new("Lava Lounge", guests_in_room, 14, 75.55)
  end

  def test_return_room_name
    assert_equal("Lava Lounge", @room1.room_name)
  end

  def test_return_no_of_guests_in_room
    assert_equal(4, @room1.guests_in_room.length)
  end

  def test_return_room_limit
    assert_equal(14, @room1.room_limit)
  end

  def test_return_room_price
    assert_equal(75.55, @room1.room_price)
  end

end
