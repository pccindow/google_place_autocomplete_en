Rails.application.routes.draw do
  resources :autocompletes
  root to: 'autocompletes#new'
end
