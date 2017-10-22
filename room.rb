class Room

  attr_accessor :id, :room_name, :capacity, :guests, :songs

  def initialize(room_hash)
    @id = room_hash['id'].to_i if room_hash['id']
    @room_name = room_hash['room_name']
    @capacity = room_hash['capacity']
    @guests = []
    @songs = []
  end

  # shows that guests have information that can be accessed

  def add_guest(guest)
      # adds guest to room and displays message saying specific guest can't be added if the room is full
    if @capacity > @guests.length
      @guests.push(guest)
    else
      raise Exception.new("Ah canna add #{guest.name} to the room, captain: she's fit tae burstin'!")
 #raises exception
      #http://blog.honeybadger.io/a-beginner-s-guide-to-exceptions-in-ruby/
    end
  end




  def remove_guest(guest)
    #removes guest from a room

    @guests.delete(guest)
  end


  def add_song(song)
    #adds songs to a room's playlist

    @songs.push(song)
  end


end
