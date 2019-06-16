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
  
end 