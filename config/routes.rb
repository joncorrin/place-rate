Rails.application.routes.draw do
  resources :reviews, except: [:show, :index]
  devise_for :users
  resources :places
  root 'places#index'
  get  '/about',   to: 'pages#about'

  get  '/contact', to: 'pages#contact'

  get  '/edit',    to: 'places#edit'

  get  '/new',     to: 'places#new'

  get  '/show',    to: 'places#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
