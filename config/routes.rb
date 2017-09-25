Rails.application.routes.draw do
  resources :careers, only[:new, :create, :edit]
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
