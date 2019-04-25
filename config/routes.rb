Rails.application.routes.draw do
  resources :histories
  root "histories#index"

  get 'users/admin'
  post 'users/admin/:id', to: 'users#def_admin', as: 'def_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
