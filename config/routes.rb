Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    get 'subject/:subject_id/:subject', to: 'search#subject', as: 'search_subject'
    post 'answer', to: 'answer#question'
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
    get 'profile', to: 'profile#edit'
    patch'profile', to: 'profile#update'      #patch para enviar dados de atualizacao e nao de criacao. patch e nao put pq posso enviar apenas parque dos dados 
  end

  
  devise_for :admins, skip: [:registrations]
  devise_for :users
 
  get 'inicio', to: 'site/welcome#index'
  get 'r_admins', to: 'admins_backoffice/welcome#index', as: 'r_admins' 

  root to: 'site/welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  
end
