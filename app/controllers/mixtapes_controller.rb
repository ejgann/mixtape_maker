class MixtapesController < ApplicationController
    
    def index
        if params[:song_id] && @song = Song.find_by_id(params[:song_id])
            # if the song_id exists in params AND it can be found in the song database table, then it's nested and can be associated with mixtape
            @mixtapes = @song.mixtapes
        else
            # otherwise, if those conditions above are false, it will find only the mixtapes alone
            @mixtapes = Mixtape.all
        end
    end

    def new
        @mixtape = Mixtape.new
    end

    def create
        @mixtape = current_user.mixtapes.build(mixtape_params)
        if @mixtape.save
            redirect_to mixtapes_path
        else
            # @mixtape = Mixtape.find(params[:mixtape_id])
            render :new
        end
    end

    def show
        @mixtape = Mixtape.find_by(id: params[:id])
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def mixtape_params
        params.require(:mixtape).permit(:tape_title, :description, :user_id, :song_id)
    end

end
