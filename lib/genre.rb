# require_relative 'song.rb'

class Genre

   attr_reader :name, :song
   @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song| song.genre == self }
    end

    def artists
        song_artists = songs.map { |song| song.artist}
        return song_artists
    end
end