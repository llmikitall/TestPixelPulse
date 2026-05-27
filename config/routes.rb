Rails.application.routes.draw do
  root "pages#index"
  
  get '/login', to: 'pages#login'
  get '/registration', to: 'pages#registration'
  get '/news', to: 'pages#news'
  get '/news/:id', to: 'pages#show_news', as: 'article_item'
end
