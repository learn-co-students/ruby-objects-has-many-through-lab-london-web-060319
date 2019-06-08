#require "pry" 

class Song

@@all=[] 

attr_accessor :name, :artist, :genre 

def initialize(name,artist,genre)
@name=name 
@artist=artist 
@genre=genre
@@all<<self 
end 

def self.all
    @@all
end 

def self.genre 
    self.genre
end 

end 

# binding.pry
# 0 