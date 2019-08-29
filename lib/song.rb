require "pry"

class Song
    attr_accessor :artist, :name

        @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def Song.all
        @@all
    end

    def artist_name
        #binding.pry
        artist == nil ? nil : self.artist.name 
    end



end
