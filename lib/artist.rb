class Artist 
  attr_accessor :name 
  
  @@all = [ ]
  
  def initialze(name)
    @name = name
  end
  
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def add_song(song)
    songs << song
  end
  
  def self.find_or_create_by_name  # composite constructor 
    
  end
  
end 