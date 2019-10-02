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
        if @project.valid?
            @project.save
            redirect_to new_project_crew_member_path(@project)
        else
            render :new
        end
    end

    def movie_index
        @movie = Movie.find(params[:id])
    end

    private

    def project_params
        params.require(:project).permit(:movie_id, :director_id, :start_date, :end_date, :budget)
    end
end
