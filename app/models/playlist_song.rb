class PlaylistSong < ActiveRecord
    belongs_to :playlist
    belongs_to :song
end