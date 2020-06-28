class SongsController < ApplicationController
    before_action :redirect_if_not_logged_in
    
    def index
        @songs = Songs.all
    end
    
    def show

    end

    def new
        @song = Song.new
    end

    def create
    end

    private

    def song_params
    end

end
