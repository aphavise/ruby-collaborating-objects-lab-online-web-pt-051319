class Song 
  
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name 
  end 
  
  def self.new_by_filename(filename)
  
  artist, name = filename.split('-')
  song =self.new(name)
  
  song
  end
  
end 