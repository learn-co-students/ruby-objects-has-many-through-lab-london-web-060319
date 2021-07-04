class Song
    @@all = []
    attr_reader(:genre, :song, :artist,)

    def initialize(song, artist, genre)
        @song = song
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end
end