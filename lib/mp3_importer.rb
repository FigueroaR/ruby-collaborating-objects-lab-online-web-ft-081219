
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
    self.files.each{| words| words.new_by_file_name(file_name) } 
    
    
    #binding.pry 
  end
 
   
 end 
 
 