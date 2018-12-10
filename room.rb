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
    @guests_in_room << Guest.new(guest_name, fav_song, purse)

    # if @guests_in_room > @room_limit
    #   @guests_in_room.pop()
    #   puts "#{@room_name} is full, there is only room for #{@room_limit} people and there are #{@guests_in_room.length} people in the room already."
    # end
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
