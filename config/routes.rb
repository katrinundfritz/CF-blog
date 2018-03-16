Rails.application.routes.draw do
  root 'articles#index'
  resources :articles
  get 'simple_pages/about'
  get 'simple_pages/contact'
end
