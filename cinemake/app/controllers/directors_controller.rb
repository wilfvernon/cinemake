class DirectorsController < ApplicationController

    before_action :valid?, except: [:new, :create]

    def new
        @director = Director.new
    end

    def create
        @director = Director.new(director_params)
        if @director.valid?
            @director.save
            redirect_to director_path(@director)
        else
            render :new
        end
    end

    def show
        @director = Director.find(params[:id])
    end

    private
        
    def director_params
        params.require(:director).permit(:name, :username, :password, :nationality, :email, :age, :image)
    end
end



