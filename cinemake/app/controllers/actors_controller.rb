require 'rest-client'
require 'pry'
class ActorsController <ApplicationController
   
    def test 

    end

    def get_actor_by_name(name)
        artist_name = name.parameterize(separator: '+')
        response = RestClient.get "https://api.themoviedb.org/3/search/person?api_key=c31c8ad23cb4028ce0c0e382ff7408a9&query=#{artist_name}"
        result_hash = JSON.parse(response)  
        binding.pry 
    end

    def get_actor_birthday(name)
        
    end

    def get_actor_gender_id

    end

    def get_actor_place_of_birth

    end

    def get_actor_bio

    end

end