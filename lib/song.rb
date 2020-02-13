class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    self.all << song 
    song
  end
  
  def self.new_by_name (song_name)
    song = self.new
    song.name = song_name
    song 
  end
  
  def self.create_by_name (song_name)
    song = self.create 
    song.name = song_name
    song 
  end
  
  def self.find_by_name (song_name)
    result = self.all.find {|songs| songs.name == song_name}
    result
  end
  
  def self.find_or_create_by_name (song_name)
    result = self.find_by_name(song_name)
    if result
      return result
    else
      self.create_by_name(song_name)
    end
  end
  
  def self.alphabetical
    self.sort_by {|word| 
    self
    
  end
    
    
end
