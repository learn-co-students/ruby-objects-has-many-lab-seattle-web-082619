

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select { |s| s.artist == self }
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        add_song(song)
    end

    def Artist.song_count
        Song.all.collect { |s| s.artist == self }.length
    end

end