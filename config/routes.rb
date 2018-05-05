Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }, controllers: { registrations: "user_registrations" }
  resources :articles do
    resources :comments
  end
  resources :users
  root 'articles#index'
  get 'simple_pages/about'
  get 'simple_pages/contact'
end
