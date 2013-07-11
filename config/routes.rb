Moviez::Application.routes.draw do
  root to: 'welcome#index'
  resources :movies
  get '/movies/search' => 'movies#search', :as => 'search'
end
