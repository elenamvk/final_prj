Rails.application.routes.draw do
  devise_for :users
  root"requests#index"
  resources :users
  resources :requests do 
    resources :offers do
      member do
        put 'accept'
      end
    end
  end

  resources :comments, only: [:create, :destroy]
  
  get 'user/band/:id' => 'user#band', :as => :band_user

  #resources :offers
  
  # match '/offers/propose/:id' => 'offers#propose', as: 'propose_offer', via: :put 
  # match '/offers/accept/:id' => 'offers#accept', as: 'accept_request', via: :put
end
