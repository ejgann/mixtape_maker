class SongsController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def index
        @songs = Song.all
    end
    
    def show

    end

    def new
        @song = Song.new
    end

    def create
        binding.pry
        @song = current_user.songs.build(song_params)
        if @song.save
            redirect_to songs_path
        else
            render :new
        end
    end

    private

    def song_params
        params.require(:song).permit(:title, :artist)
    end

end
