class ProjectsController < ApplicationController
    
    def index
        @director = Director.find(params[:id])
        @projects = Project.all.select{|project| project.director_id == params[:id]}
    end

    def show
        @project.find(params[:id])
    end

    def new
        @project = Project.new
        @movie = Movie.find(params[:id])
    end

    def create
        @project = Project.new(project_params)
    end

    def movie_index
        @movie = Movie.find(params[:id])
    end

    private

    def project_params
        params.require(:project).permit(:movie_id, :director_id, :start_date, :end_date, :budget)
    end
end
