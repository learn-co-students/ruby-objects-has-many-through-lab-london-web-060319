# require "pry" 

class Artist

    attr_accessor :name 

    @@all=[] 

    def initialize(name)
        @name=name 
        @@all<<self 
    end 

def self.all 
    @@all
end 

def new_song(name,genre)
    Song.new(name, self, genre)
end 

def genres
  songs.map {|artist_songs| artist_songs.genre}
end 

# binding.pry
# 0 

def songs
Song.all.select {|songs| self == songs.artist}
end 

end 