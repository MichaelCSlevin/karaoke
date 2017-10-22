class Song

  attr_accessor :id, :title

  def initialize(song_hash)
      # test shows that song list has information that can be accessed
    @id = song_hash['id'].to_i if song_hash['id']
    @title = song_hash['title']
  end





end
