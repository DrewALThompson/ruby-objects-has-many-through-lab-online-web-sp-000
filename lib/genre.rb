class Genre 
  
  attr_accessor
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << name
  end
  
  
end