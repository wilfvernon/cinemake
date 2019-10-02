class ProjectCrewMembersController < ApplicationController
    def new
        @project = Project.find(params[:id])
        @project_crew_member = ProjectCrewMember.new
    end

    def create
        
    end
end
