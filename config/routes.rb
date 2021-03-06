Rails.application.routes.draw do
  resources :events
  resources :event_registrations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret',
                                                 confirmation: 'verification', unlock: 'unblock',
                                                 registration: 'register', sign_up: 'cmon_let_me_in' }


  root to: 'event_registrations#index'
  # resources :disciplines
  # resources :age_groups
  resources :competitions
  resources :users, only: [:show, :update, :edit]
end
