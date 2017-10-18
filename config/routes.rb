Rails.application.routes.draw do
  get 'adventures_by_user/:user_id', controller: 'adventures', action: 'list_user'
  get 'sessions_by_adventure/:adventure_id', controller: 'sessions', action: 'list_sessions'
  get 'players_by_adventure/:adventure_id', controller: 'players', action: 'list_players'
  resources :sessions
  resources :players
  resources :adventures
  mount_devise_token_auth_for 'User', at: 'auth'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
