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
  ###Crew Members###

  get '/crew_members/search', to: 'crew_members#index', as: 'crew_members_search'
  get '/crew_members/:id', to: 'crew_members#show', as: 'crew_member'
  get '/movies/:id/crew_members', to: 'crew_members#movie_index', as: 'movie_crew_members'
  
  post 'crew_members', to: 'crew_members#create', as: 'create_crew_members'


  ### Roles Routes ###
  get 'crew_members/:id/roles/new', to: 'roles#new', as: 'new_role'
  
  post 'roles/new', to: 'roles#create', as: 'roles'

  ###Directors Routes###

  get '/directors/edit', to: 'directors#edit', as: 'edit_director'
  get '/directors/:id', to: 'directors#show', as: 'director'

  post '/directors', to: 'directors#create', as: 'directors'
  patch '/directors/:id', to: 'directors#update'
  delete '/directors/:id', to: 'directors#destroy'

  ###Projects Routes###

  get '/directors/:id/projects', to: 'projects#index', as: 'director_projects'
  get '/movies/:id/projects/new', to: 'projects#new', as: 'new_project'
  get '/projects/:id', to: 'projects#show', as: 'project'
  get '/movies/:id/projects', to: 'projects#movie_index', as: 'movie_projects'

  post '/projects', to: 'projects#create', as: 'projects'

  ###Movies###
  get '/movies', to: 'movies#index', as: 'movies'
  get '/directors/:id/movies', to: 'movies#director_index', as: 'director_movies'
  get '/movies/new', to: 'movies#new', as: 'new_movie'
  get '/movie/:id', to: 'movies#show', as: 'movie'

  post '/movies', to: 'movies#create'

  ###Project Crew Members###
  get '/projects/:id/crew_members/new', to: 'project_crew_members#new', as: 'new_project_crew_member'

  post '/projects/:id/crew_members', to: 'project_crew_members#create', as: 'project_crew_members'

end
