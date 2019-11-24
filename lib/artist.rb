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

    def songs
        Song.all.select {|s| s.artist == self}
        #Song.all.select {|s| s.artist} also passes?
    end

    #takes in an argument of a song and associates that song with the artist
    def add_song(song)
        song.artist = self        
    end

    #creates a new song with it and associates the song and artist
    def add_song_by_name(song)
        Song.new(song).artist = self
    end

    #a class method that returns the total number of songs associated to all existing artists
    def self.song_count
        Song.all.select {|s| s.artist}.count
    end
end