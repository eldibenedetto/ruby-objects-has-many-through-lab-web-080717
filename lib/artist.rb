require "pry"
class Artist

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    # Artist  < --- self.class
    # #<Song:0x007fdb4aa73050> < --- song
    # Song < --- song.class
  end

  def genres
    @songs.map do |song|
      song.genre
    end
  end

end
