require 'pry'

class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path =path
  end
  
  def files 
    # return all fire names in given path as an array
    Dir.entries(path).filter { |filename| filename.end_with('.mp3')}
  end
  
  
  def end_with?
    
    
  end 
end 