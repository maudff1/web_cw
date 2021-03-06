CheamCroquet::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :events

  root :to => "cheam_croquet#index"
  match '/about_the_club', :to => "cheam_croquet#about_the_club", via:[:get]
  match '/how_to_join', :to => "cheam_croquet#how_to_join", via:[:get]
  match '/programme', :to => "cheam_croquet#programme", via: [:get]
  match '/how_to_get_there', :to => "cheam_croquet#how_to_get_there", via: [:get]
  match '/links_to_croquet_site', :to => "cheam_croquet#links_to_croquet_site", via: [:get]
  match '/newsletter', :to => "cheam_croquet#newsletter", via: [:get]
  match '/club_matters', :to => "cheam_croquet#club_matters", via: [:get]
  match '/what_you_need', :to => "cheam_croquet#what_you_need", via: [:get]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
