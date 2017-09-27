Rails.application.routes.draw do
  resources :careers, only:[:new, :create, :edit, :destroy]

  get 'users/:id/manage' => 'users_manages#home', as: 'users_manage'
  get 'people/:id/manage' => 'people_manages#home', as: 'people_manage'

  devise_for :people, controllers: {
  sessions:      'people/sessions',
  passwords:     'people/passwords',
  registrations: 'people/registrations'
  }
  
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  
  root 'static_pages#home'
end
