require 'pry'

class Song
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def name()
        @name
    end

    def self.all()
        @@all
    end

    def artist=(artist)
        artist.songs << self
        @artist = artist
    end

    def artist()
        @artist
    end

    def artist_name()
        if @artist
            return @artist.name
        end
        return nil
    end
end