module Api
    module V1
        module Playlists
            class SongsController < ApplicationController
                def index
                    playlist = Playlist.find(params[:playlist_id])
                    @songs = playlist.songs
                    render json: @songs
                end

                def create
                    
                end


                private

                def song_params

                end
            end
        end
    end
end