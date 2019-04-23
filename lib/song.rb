require 'pry'

class Song 
 attr_accessor :name, :artist, :genre
 
  @@count = 0
  @@artist_count = {}
  @@genre_count = {}
  @@artists = []
  @@genres = []
  
  def initialize(song_name, artist_name, genre_type)
    @@count += 1
    @@genres << genre_type
    @@artists << artist_name
    @name = song_name
    @artist = artist_name
    @genre = genre_type
  end 

  def new(song_name, artist_name, genre_type)
    @name = song_name
    @@genres << genre_type
    @@artists << artist_name
    @artist = artist_name
    @genre = genre_type
  end

  def name
    @name
  end 

  def artist
    @artist
  end 

  def genres
    @genre
  end
  
  def self.count 
    @@count
  end 
  
  def self.artists 
    @artist = @@artists
    @@artists.uniq!
  end
  
  def self.genres 
    @genre = @@genres
    @@genres.uniq!
  end
  
  def self.genre_count 
    @@genre_count = {}
    count = 0
    @@genre_count.each do |genre, count| 
      genre = @genre[count]
      count = @@genres.count(@genre[count])
      count += 1 
    end 
    
    binding.pry
  end

  def self.artist_count 
  end
  
end 