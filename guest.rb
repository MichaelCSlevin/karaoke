class Guest

attr_accessor :id, :name, :favourite_song, :funds

  def initialize (guest_hash)
    #shows that guests have information that can be accessed

    @id = guest_hash['id'].to_i if guest_hash['id']
    @name = guest_hash['name']
    @favourite_song = guest_hash['favourite_song']
    @funds = guest_hash['funds']
  end

#shows that guests have information that can be accessed

end
