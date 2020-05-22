class Song 
attr_accessor :name, :artist, :song
@@count = 0 

  def initialize(name, artist, genre)
  @name = name 
  @artist = artist
  @genre = genre
  end
end