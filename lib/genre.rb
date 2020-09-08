class Genre 
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << name
  end
  
  def self.all
    @@all
  end
  
  def songs
    Songs.all.select {|song| song.genre == self}
  end
  
  def artists
    Song.all.map {|song| song.artist }
  end

end