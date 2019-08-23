class SongSorter
    def initialize(songs)
        @songs = songs
        @sorted_songs = nil
    end

    def sort(command)
        case command
        when "random"
            @sorted_songs = @songs.to_a.shuffle
        when "reverse"
            @sorted_songs = @songs.to_a.reverse
        else
            @sorted_songs = @songs
        end
        @sorted_songs
    end
end