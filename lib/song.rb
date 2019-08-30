require "pry"

class Song
    attr_accessor :artist, :name

        @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def Song.all
        @@all
    end

    def artist_name
        artist == nil ? nil : self.artist.name 
    end



end
