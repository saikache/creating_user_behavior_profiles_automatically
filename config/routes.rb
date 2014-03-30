Ccc::Application.routes.draw do
  root :to => "histories#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get "charts/index"

  post "charts/index"

  get "charts/show"

  resources :user_commands

  resources :histories


  post "sessions/create"

  resources :users

	get "log_out" => "sessions#destroy", :as => "log_out"

	get "log_in" => "sessions#new", :as => "log_in"

	get "sign_up" => "users#new", :as => "sign_up"
	
  match ':controller(/:action(/:id))(.:format)'
  
end