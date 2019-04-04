class Genre 
  
  extend Concerns::Findable 
  
  attr_acessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
    save
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.destroy_all
    @@all = []
  end 
  
  def save
    self.class.all << self 
  end 
  
  def self.create(genre_name)
    self.new(genre_name)
  end 
  
  def artist
    @artist 
  end 
  
  def artist=(artist)
    @artist = artist 
    artist.add_song(self)
  end 

  
  # def artist 
  #   songs.map(&:artist).uniq 
  # end 
  
end 