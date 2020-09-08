class Genre 
  
  attr_accessor
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
    Genre.all.collect {|song|

end