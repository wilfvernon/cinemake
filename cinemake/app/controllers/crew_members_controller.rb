require 'rest-client'
require 'pry'
class CrewMembersController <ApplicationController
   
    def index 
        # get_actor_by_name(params)
    end

    ### API HELPER METHODS ###

    def get_actor_by_name(name)
        artist_name = name.parameterize(separator: '+')
        response = RestClient.get "https://api.themoviedb.org/3/search/person?api_key=c31c8ad23cb4028ce0c0e382ff7408a9&query=#{artist_name}" 
        result_hash = JSON.parse(response) 
        @results_array = result_hash["results"].select{|result| result["known_for_department"] == "Acting"}
    end


end