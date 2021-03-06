Rails.application.routes.draw do
  resources :characters
  root 'static_pages#home'

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  resources :users, :only => [:index, :show]

  devise_scope :user do
    get '/login', to: 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
