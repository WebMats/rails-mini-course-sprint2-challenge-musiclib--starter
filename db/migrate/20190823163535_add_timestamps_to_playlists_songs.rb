class AddTimestampsToPlaylistsSongs < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :playlists_songs, default: DateTime.now
  end
end
