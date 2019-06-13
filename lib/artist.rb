
class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end 

    #The Artist class needs an instance method, #songs, 
    #that iterates through all songs and finds the songs
    # that belong to that artist. Try using select to achieve this.
    def songs
        Song.all.select {|song| song.artist == self}
    end 
    
    def new_song(name,genre)
        Song.new(name, self, genre)
    end

    def genres
        songs.map {|song| song.genre}
    end 
end 



# The Artist class needs an instance method, #genres that iterates over that 
#artist's songs and collects the genre of each song.