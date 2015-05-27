Rails.application.routes.draw do
  devise_for :users
  root"users#index"
  resources :users
  resources :requests do 
     resources :offers
   end
   #resources :offers
   match '/requests/accept/:id' => 'requests#accept', as: 'accept_request', via: :put
   match '/offers/propose/:id' => 'offers#propose', as: 'propose_offer', via: :put 
  
  


 
  
end
