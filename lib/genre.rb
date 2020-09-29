require 'pry'
require_relative '../lib/concerns/findable'

class Genre
  extend Concerns::Findable

  attr_accessor :name
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
    song.genre = self unless song.genre
    songs << song unless songs.include?(song)
  end

  def artists
    artist = songs.map {|song| song.artist}
    artist.uniq
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.create(name)
    genre = Genre.new(name)
    genre.save
    genre
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end
end
