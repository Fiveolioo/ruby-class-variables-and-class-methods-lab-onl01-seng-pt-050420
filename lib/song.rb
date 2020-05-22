class Song 
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []

  def initialize(name, artist, genre)
  @name = name 
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |a|
      if genre_count[a]
        genre_count[a] += 1 
      else
        genre_count[a] = 1
      end
    end
    genre_count
  end
  
  def self.artist_count
    artists_count = {}
    @@artists.each do |a|
        if artists_count[a]
        artists_count[a] += 1 
      else
        artists_count[a] = 1
      end
    end
    artists_count
  end 
end