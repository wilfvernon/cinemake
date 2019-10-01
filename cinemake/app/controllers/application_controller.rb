class ApplicationController < ActionController::Base 
   
    def user 
        if session[:user]
            user = Director.find(session[:user]["id"])
        end
    end


    def valid? 
       redirect_to login_path unless user  
    end
   
    before_action :valid?, except: [:welcome]

    def welcome
    end
end
