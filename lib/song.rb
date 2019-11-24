class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            return artist.name
        else
            return nil
        end
    end
    # def artist_name
    #     self.artist ? self.artist.name : nil
    # end
    # Uses ?: comparison operator
end