require 'rest-client'
require 'pry'

class CrewMembersController < ApplicationController
   
    def index 
        
    end

    def create
        if CrewMember.ids.include?(params[:id])
            redirect_to crew_member_path(params[:id])
        else 
            byebug
            hash = CrewMember.get_crew_info(params[:id])
            CrewMember.create(set_crew)
            redirect_to crew_member_path(params[:id])
        end
    end

    private

    def set_crew
        hash.require(:crew_member).permit(:id, :birthday, :gender, :place_of_birth, :bio, :names, :type)
    end
 
end