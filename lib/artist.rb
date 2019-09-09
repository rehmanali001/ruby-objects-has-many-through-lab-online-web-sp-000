class Artist 
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
<<<<<<< HEAD
    Song.new(name, self, genre)
=======
    Song.new(name, genre, self)
>>>>>>> 91002a61af94380336c8ebe4f774b7e36f2c769f
  end 
  
  def songs
   Song.all.select do |song|
     song.artist = self
  end 
  end
  
  def genres
    songs.map do |song|
      song.genre
    end 
  end
end 