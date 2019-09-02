

class Artist

    attr_reader 
    attr_accessor :name

    def initialize(name)
        @name = name 

    end


    def songs
        Song.all.select do |songs|
            songs.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        add_song(song)
    end

    def self.song_count
        Song.all.count
    end

end