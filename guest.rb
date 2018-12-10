require_relative('room')
require_relative('bar')

class Guest

  attr_reader :guest_name, :fav_song
  attr_accessor :purse

  def initialize(guest_name, fav_song, purse)
    @guest_name = guest_name
    @fav_song = fav_song
    @purse = purse
  end

end
