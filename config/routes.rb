Rails.application.routes.draw do

  root 'welcome#index'

  get "log_in", to: "sessions#new"
  post "log_in", to: "sessions#create"
  post "log_out", to: "sessions#destroy"

  get "sign_up", to: "users#new"


  resources :users
  resources :characters, only: [:index, :show]
  resources :locations, only: [:show, :index]
  resources :items
  resources :sessions

  get '/locations/:id/pickup', to: 'locations#pickup'
  get '/locations/:id/details', to: 'locations#details'
  get '/locations/:id/current_items', to: 'locations#current_items'
  post '/locations/:id/pickup', to: 'characters#pickup_item'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
