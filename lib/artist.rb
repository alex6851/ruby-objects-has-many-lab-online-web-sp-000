require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    # @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    # @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    # @songs << song
    song.artist = self
  end

  def songs
    # @songs
    Song.all.select {|song| song.artist == self}

  end

  def self.song_count
    Song.all.count
  end


end
