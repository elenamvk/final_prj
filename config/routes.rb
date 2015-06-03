Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  root"pages#home"
  resources :users, only: [:index, :show]
  resources :requests do 
    resources :offers do
      member do
        put 'accept'
      end
    end
  end

  resources :comments, only: [:create, :destroy]

  get '/home' => 'pages#home'
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
  get '/bands' => 'pages#bands'
  get '/hosts' => 'pages#hosts'
  
end
