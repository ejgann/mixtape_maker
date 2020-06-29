class MixtapesController < ApplicationController
    def index
        @mixtapes = Mixtape.all
    end

    def new
        @mixtape = Mixtape.new
    end

    def create
        @mixtape = current_user.mixtapes.create(mixtape_params)
        if @mixtape.save
            redirect_to mixtapes_path
        else
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
        params.require(:mixtape).permit(:tape_title, :description)
    end

end
