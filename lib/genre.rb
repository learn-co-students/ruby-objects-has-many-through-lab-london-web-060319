require "pry"

class Genre
    @@all = []
    attr_reader(:name)
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song| self == song.genre}
    end

    def artists
        songs.collect do |song|
            song.artist
        end
    end
end

# binding.pry
# 0