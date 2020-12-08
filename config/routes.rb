Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :users
  
   get "/admin" => "admin/posts#index"
  namespace :admin do
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
