require 'rest-client'
require 'pry'

class CrewMembersController < ApplicationController
   
    def index 
        
    end

    def show
        if CrewMember.ids.include?(params[:id])
            @crew_member = CrewMember.find(params[:id])
        else 
            hash = CrewMember.get_crew_info(params[:id])
            @crew_member = CrewMember.new(:id => hash["id"], :birthday => hash["birthday"], :gender_id => hash["gender"], :place_of_birth => hash["place_of_birth"], :bio => hash["biography"], :name => hash["name"], :crew_member_type => hash["known_for_department"])
        end
    end

 
end