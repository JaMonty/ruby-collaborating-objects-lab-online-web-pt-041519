class Artist

  @@all = []
  
 attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end
  
   def add_song(song)
    self.songs << song
  end
  
  def save
  @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      new_artist = self.new(artist_name)
      new_artist.save
      new_artist
    end
  end
  
    def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end 
