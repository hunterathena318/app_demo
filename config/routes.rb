Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/categories', to: 'static_pages#categories'
  get 'session/new'
  	resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "login" => "session#new"
  post   "login"    => "session#create"
  	#get "logout"   => "session#destroy"
  delete "logout"   => "session#destroy"


   resources :users
  
   resources :session
   resources :category_book
   resources :book
   resources :static_pages
  
end
