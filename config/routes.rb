Moviez::Application.routes.draw do
  root to: 'welcome#index'
  resources :movies
  get '/movies/search' => 'movies#search', :as => 'search'
  post '/movies/create' => 'movies#create', :as => 'create_movie'
  get '/movies/:id/delete' => 'movies#destroy', :as => 'delete_movie'
  get '/actors' => 'actor#index', :as => 'actor_list'
end
