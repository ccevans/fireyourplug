Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/getoffthecouch'
  get 'pages/art'
  get 'pages/music'
  get 'pages/food'  
  get 'pages/nightlife'
  get 'pages/drinks'
  get 'pages/outdoors'
  get 'pages/sports'
  get 'pages/theatre'
  get 'pages/culture'

  root "pages#getoffthecouch"

  get '/art', to: 'pages#art'
  get '/music', to: 'pages#music'
  get '/food', to: 'pages#food'  
  get '/nightlife', to: 'pages#nightlife'
  get '/drinks', to: 'pages#drinks'
  get '/outdoors', to: 'pages#outdoors'
  get '/sports', to: 'pages#sports'
  get '/theatre', to: 'pages#theatre'
  get '/culture', to: 'pages#culture'
  get '/fitness', to: 'pages#fitness'

  resources :posts
  resources :categories
  resources :links
end
