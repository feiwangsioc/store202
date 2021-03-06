Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :products
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
   resources :products do
     member do
       post :add_to_cart
     end
   end

   resources :carts do
     collection do
       delete :clean
     end
   end
  
  resources :cart_items
end
