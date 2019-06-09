class Genre

    attr_accessor :name

    @@all = []

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
        songs.collect {|song| song.artist}
    end 
end