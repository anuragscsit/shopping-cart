Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root 'home#index'
  
  resources :categories, only: [:show, :index]  do 
    resources :sub_categories, only: [:show]  do 
      resources :items, only: [:show] 
    end
  end

end
