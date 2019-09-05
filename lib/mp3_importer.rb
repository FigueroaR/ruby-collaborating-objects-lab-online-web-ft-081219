
require 'pry'

class MP3Importer 
   attr_accessor :path 
   
   
  def initialize(path)      
    @path = path 
    #binding.pry 
    
  end 
  
  def files
     
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end 
   
  def import
    future_array = self.files.each{|words| Song.new_by_file_name(words) } 
    future_array.flat_map
    
    #binding.pry 
  end
 
   
 end 
 
 