Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats

  get '/search', to: 'pages#search', as: 'search'
end
