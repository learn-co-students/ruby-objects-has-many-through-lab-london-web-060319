require "pry"

class Artist
    attr_reader(:name)
    @@all = []
    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def new_song(song, genre)
        Song.new(song, self, genre)
    end

    def songs
        Song.all.filter do |song|
            song.artist == self
        end
    end

    def genres
        songs.collect do |genre|
            genre.genre
        end
    end
end