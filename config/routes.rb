Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
    ## get 'admins/index'  ##substituido pelo resource
    ## get 'admins/edit/:id', to: 'admins#edit'  ##substituido pelo resource
    ## resources :admins, only: [:index, :new, :edit, :update, :create]
    ## resources :admins, expect: [:delete]
    resources :admins
    resources :subjects 
    resources :questions 
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end

  
  devise_for :admins
  devise_for :users
 
  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  
end
