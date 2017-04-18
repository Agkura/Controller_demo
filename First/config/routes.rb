Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    resources :artworks, only: :index
  end
  
  resources :users, except: [:new, :edit]
  resources :artworks, except: [:index, :new, :edit]
  resources :artwork_shares, except: [:new, :edit]
  # get '/users/:user_id/artworks' => 'artworks#index'

  # get 'users/' => 'users#index'
  # get 'users/:id' => 'users#show', :as => 'user'
  # get 'users/new' => 'users#new', :as => 'new_user'
  # get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
  # post 'users' => 'users#create'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'
end
