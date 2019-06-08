require "pry" 

class Genre
@@all=[] 

attr_accessor :name 

def initialize(name)
    @name=name 
    @@all<<self 
end 

def self.all
    @@all
end 

# binding.pry
# 0  

def songs 
    Song.all.select {|songs| self== songs.genre }
end 

def artists 
    songs.map {|genre_songs| genre_songs.artist}
end 

end 