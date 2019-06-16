class Artist 
  attr_accessor :name 
  
  @@all = [ ]
  
  def initialze(name)
    @name = name
    @songs = []
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
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.create_by_name(name)
    #self.new(name).tap{|artist| artist.save}
    # artist = self.new(name)
    # artist.save
    self.new(name).tap(&:save)
  end
  
  def self.find_by_name(name)
    self.all.detect{|artist| artist.name == name}
  end

end 