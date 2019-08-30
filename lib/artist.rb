require 'pry'

class Artist
    @@all = []

    def initialize(name)
        @songs = []
        @name = name
        @@all << self
    end

    def self.all()
        @@all
    end
    
    # total number of songs that have been created
    def self.song_count()
        song_count = 0
        @@all.each do |artist|
            artist.songs.each do |song|
                song_count += 1
            end
        end
        puts song_count
        return song_count - 1
    end

    def add_song(song)
        song.artist = self
        @songs << song
    end

    def name()
        @name
    end

    def songs()
        @songs
    end
    
    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
        if !@songs.include?(song)
            @songs << song
        end
    end
end