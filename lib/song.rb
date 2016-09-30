class Song
  attr_accessor :name, :artist_name
  @@all = []

  # def initialize(song=nil)
  # 	@song = song
  # end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
  	@@all << song = self.new
  	song
  end

  def self.new_by_name(song_name)
  	song = self.new
  	song.name = song_name
  	song
  end

  def self.create_by_name(song_name)
  	song = self.create
  	song.name = song_name
  	song
  end

  def self.find_by_name(song_name)
  	@@all.detect {|song| song_name == song.name }
  end

  def self.find_or_create_by_name(song_name)
  	song = self.find_by_name(song_name)
  	return song if song
  	self.create_by_name(song_name)
  end

  def self.alphabetical
  	@@all.sort_by {|song| song.name }
  end

  def self.new_from_filename
  	
  end



end