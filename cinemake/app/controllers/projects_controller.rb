class ProjectsController < ApplicationController
    
    def index
        @director = Director.find(params[:id])
        @projects = Project.all.select{|project| project.director_id == params[:id]}
    end

    def show
        @project.find(params[:id])
    end

    def new
        @movie = Movie.new
    end

    def create
        @project = Project.new(project_params)
    end

    private

    def project_params
        params.require(:project).permit(:movie_id, :director_id, :start_date, :end_date, :budget)
    end
end
