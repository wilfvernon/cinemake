Rails.application.routes.draw do

  ###Session Routes
  get '/login', to: 'sessions#login', as: 'login'
  get '/signup', to: 'directors#new', as: 'signup'

  #Actors Test
  get '/test', to: 'actors#test', as: 'test'
  #Crew Members Test
  get '/crew_members/search', to: 'crew_members#index', as: 'crew_members'
  get '/crew_member/:id', to: 'crew_members#show', as: 'crew_member'
  post 'crew_member/create', to: 'crew_members#create', as: 'create_crew_member'

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
