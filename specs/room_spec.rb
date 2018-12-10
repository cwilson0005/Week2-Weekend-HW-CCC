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
    @room1 = Room.new("Lava Lounge", guests_in_room, 7, 7.50)
  end

  def test_return_room_name
    assert_equal("Lava Lounge", @room1.room_name)
  end

  def test_return_no_of_guests_in_room
    assert_equal(4, @room1.guests_in_room.length)
  end

  def test_return_room_limit
    assert_equal(7, @room1.room_limit)
  end

  def test_return_room_price
    assert_equal(7.50, @room1.room_price)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room("Ronald Reeves", "SOS - Abba", 7.50)
    assert_equal(5, @room1.guests_in_room.length)
  end

  def test_add_song_to_room
    @room1.add_song_to_room("SOS - Abba")
    assert_equal(1, @room1.songs_in_room.length)
  end

  def test_is_room_full__true
    @room1.guests_in_room << Guest.new("Camila Paige", "Burnin' - Bolam", 102.59)
    @room1.guests_in_room << Guest.new("Holly Craig", "One - Metallica", 99.23)
    @room1.guests_in_room << Guest.new("Megan Cannon", "Fireworks - Katy Perry", 103.21)
    @room1.guests_in_room << Guest.new("Fred Quilox", "Marines - Sodom", 10.21)
    assert_equal(true, @room1.is_room_full)
  end

  def test_is_room_full__false
    assert_equal(false, @room1.is_room_full)
  end

end
