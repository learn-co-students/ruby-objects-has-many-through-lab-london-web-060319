require_relative 'song.rb'
require_relative 'genre.rb'
require 'pry'
class Artist

    attr_reader :name
    attr_accessor :songs, :artist
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
        @songs = []
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        @songs << song
        song
    end

    def genres
        @songs.map do |song|
            if song.artist == self
                song.genre
            end
        end
    end
end