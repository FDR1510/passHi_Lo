Rails.application.routes.draw do
  root 'passwords#log_in'
  get '/load_game' => 'games#load_game'
  get '/try' => 'games#try'
  get '/check_cred' => 'passwords#check_cred'
  # get '/log_in' => 'passwords#log_in'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
