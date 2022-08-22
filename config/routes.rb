Rails.application.routes.draw do
  resources :home
  resources :blogs
  resources :comments
  root 'home#index'
  get '/search/blog', to: 'blogs#search_blog'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
