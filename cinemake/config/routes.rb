Rails.application.routes.draw do

  #Actors Test
  get '/test', to: 'actors#get_actor_by_name', as 'test'

  ###Application Routes ###
  get '/', to: 'application#welcome', as: 'welcome'
  get '/login', to: 'directors#login', as: 'login'
  get '/signup', to: 'directors#new', as: 'signup'

  ###Directors Routes###

  get '/directors/edit', to: 'directors#dit', as: 'edit_director'
  get '/directors/:id', to: 'directors#show', as: 'director'

  post '/directors', to: 'directors#create', as: 'directors'
  patch '/directors/:id', to: 'directors#update'
  delete '/directors/:id', to: 'directors#destroy'

  get '/directors/:id/projects', to: 'projects#index', as: 'projects'

  ###Movies###
  


end
