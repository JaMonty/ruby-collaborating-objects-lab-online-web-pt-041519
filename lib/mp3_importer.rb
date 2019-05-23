class MP3Importer

  attr_accessor :path, :filenames

  def initialize(path)
    @path = path
    @filenames = []
  end 
  
  def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end 


  
 
 
end