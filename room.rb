require_relative('guest')
require_relative('song')

class Room

  attr_reader :room_name, :room_limit, :room_price
  attr_accessor :guests_in_room, :songs_in_room

  def initialize(room_name, guests_in_room = [], room_limit, room_price)
    @room_name = room_name
    @guests_in_room = guests_in_room
    @room_limit = room_limit
    @room_price = room_price
    @songs_in_room = []
  end

  def add_guest_to_room(guest_name, fav_song, purse)
    if purse < @room_price
      puts "#{guest_name} cannot pay the fee of £#{@room_price}, as they only have £#{purse} in their purse."
    else
      @guests_in_room << Guest.new(guest_name, fav_song, purse)
    end

  end

  def add_song_to_room(song_name)
    @songs_in_room << Song.new(song_name)
  end

  def is_room_full
    if @guests_in_room.length > @room_limit
      return true
    else
      return false
    end
  end

end
