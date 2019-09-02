require 'pry'

class Song

    attr_reader :name
    attr_accessor :artist

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end

    def artist_name #why do i refer to the object here rather than to its name
        if self.artist
            self.artist.name
        else
            nil
        end
    end

    


end 