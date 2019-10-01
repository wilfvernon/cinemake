Rails.application.routes.draw do

  ###Application Routes ###
  get '/', to: 'application#welcome', as: 'welcome'
  
  ###Session Routes
  get '/login', to: 'sessions#new', as: 'login'

  get '/signup', to: 'directors#new', as: 'signup'

  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'

  #Actors Test
  get '/test', to: 'actors#test', as: 'test'
  #Crew Members Test
  get '/crew_members/search', to: 'crew_members#index', as: 'crew_members_search'
  get '/crew_members/:id', to: 'crew_members#show', as: 'crew_member'
  post 'crew_members', to: 'crew_members#create', as: 'crew_members'


  ###Directors Routes###

  get '/directors/edit', to: 'directors#edit', as: 'edit_director'
  get '/directors/:id', to: 'directors#show', as: 'director'

  post '/directors', to: 'directors#create', as: 'directors'
  patch '/directors/:id', to: 'directors#update'
  delete '/directors/:id', to: 'directors#destroy'

  ###Projects Routes###

  get '/directors/:id/projects', to: 'projects#index', as: 'projects'
  get '/projects/new', to: 'projects#new', as: 'new_project'
  get '/projects/:id', to: 'projects#show', as: 'project'

  post '/projects', to: 'projects#create'

  ###Movies###
  get '/movies', to: 'movies#index', as: 'movies'
  get '/directors/:id/movies', to: 'movies#director_index', as: 'director_movies'
  get '/movies/new', to: 'movies#new', as: 'new_movie'

  post '/movies', to: 'movies#create'


end
