Rails.application.routes.draw do
  devise_for :users
  root to: 'rooms#index'
  # get 'rooms/show'

  # devise_for :users, controllers: {
  #     sessions: 'users/sessions',
  #     registrations: 'users/registrations',
  #     passwords: 'users/passwords',
  #     confirmations: 'users/confirmations',
  # }

  resources :rooms, only: [:index, :create, :destroy, :new, :show]

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
