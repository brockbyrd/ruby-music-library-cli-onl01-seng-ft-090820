require 'pry'
require_relative '../lib/concerns/findable'

class Artist
  extend Concerns::Findable

  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
# <<<<<<< HEAD
# =======
    save
# >>>>>>> 0a597d5898ffd979df7f7735bd5366f411c723f4
  end

  def add_song(song)
    song.artist = self unless song.artist
    songs << song unless songs.include?(song)
  end

  def genres
    genre = songs.map {|song| song.genre}
    genre.uniq
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end
end
