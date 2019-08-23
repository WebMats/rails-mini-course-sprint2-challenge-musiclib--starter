module Api
    module V1
        module Users
            class PlaylistsController < ApplicationController
                def index
                    user = User.find(params[:user_id])
                    @playlists = user.playlists
                    render json: @playlists
                end

                def create
                    user = User.find(params[:user_id])
                    @playlist = user.playlists.new(name: playlist_params(:name))
                    if @playlist.save
                        render json: @playlist, status: created
                    else
                        render json: { message: "Unable to create your playlist" }, status: :unprocessable_entity
                    end
                end

                private

                def playlist_params
                    params.permit(:name) 
                end
            end
        end
    end
end