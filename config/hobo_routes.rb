# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

Demo::Application.routes.draw do


  # Resource routes for controller dummies
  resources :dummies do
    collection do
      get 'complete_name'
    end
  end


  # Resource routes for controller users
  resources :users, :only => [:edit, :show, :create, :update, :destroy] do
    collection do
      post 'signup', :action => 'do_signup'
      get 'signup'
    end
    member do
      get 'account'
      put 'reset_password', :action => 'do_reset_password'
      get 'reset_password'
    end
  end

  # User routes for controller users
  get 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  get 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'

  # Resource routes for controller relations
  resources :relations

end
