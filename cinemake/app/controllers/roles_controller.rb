class RolesController < ApplicationController
    def new
        
    end

    def create
        @role = Role.create(roles_params)
        redirect_to director_movies(params[:movie_id])
    end

    private 

    def roles_params
        params.require(:role).permit(:crew_member_id, :movie_id, :wage, :hire_date, :name, :type)
    end 
end