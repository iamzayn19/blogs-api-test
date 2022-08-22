Rails.application.routes.draw do
  # resources :home
  # resources :blogs
  # resources :comments
  # root 'home#index'
  # get '/search/blog', to: 'blogs#search_blog'
  resources :blogs do
    resources :comments
    resources :blog_likes
  end 
  post '/session/new', to: 'sessions#create'
  post '/registration/new', to: 'registrations#create'
  get '/confirmation/new', to: 'confirmations#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
