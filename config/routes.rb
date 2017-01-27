Rails.application.routes.draw do

  devise_for :users
  resources :places do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end
  root 'places#index'
  get  '/about',   to: 'pages#about'

  get  '/contact', to: 'pages#contact'

  get  '/edit',    to: 'places#edit'

  get  '/new',     to: 'places#new'

  get  '/show',    to: 'places#show'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
