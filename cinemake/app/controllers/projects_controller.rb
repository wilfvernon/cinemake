class ProjectsController < ApplicationController
    
    def index
        @director = Director.find(params[:id])
        @projects = Project.all.select{|project| project.director_id == params[:id]}
    end

    def show
        
    end

    def new
        
    end

    def create
        
    end
end
