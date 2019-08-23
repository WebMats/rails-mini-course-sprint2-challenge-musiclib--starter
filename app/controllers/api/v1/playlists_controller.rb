module Api
    module V1
        class PlaylistsController < ApplicationController
            def show
                @playlist = Playlist.find(params[:id])
                render json: @playlist
            end
        end
    end
end