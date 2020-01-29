require "pry"
require_relative "song.rb"

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.each { |song| song }
  end

  # takes in an argument of a song and associates that
  # song with the artist by telling the song that it
  # belongs to that artist
  def add_song(song)
    song.artist = self
  end

  # takes in an argument of a post title, creates a new
  # post with it and associates the post and author
  def add_song_by_name(name)
    name = Song.new(name)
    name.artist = self
  end

  def self.song_count
    Song.all.count
  end
end
