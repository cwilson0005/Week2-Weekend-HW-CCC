require_relative('guest')
require_relative('song')

class Room

  attr_reader :room_name, :room_limit, :room_price
  attr_accessor :guests_in_room

  def initialize(room_name, guests_in_room = [], room_limit, room_price)
    @room_name = room_name
    @guests_in_room = guests_in_room
    @room_limit = room_limit
    @room_price = room_price
  end

end
