Rails.application.routes.draw do
  # Routes for the Save resource:
  # CREATE
  get "/saves/new/:id", :controller => "saves", :action => "new"
  post "/user_plants/:id", :controller => "user_plants", :action => "show"

  # READ
  get "/saves", :controller => "saves", :action => "index"
  get "/saves/:id", :controller => "saves", :action => "show"

  # UPDATE
  get "/saves/:id/edit", :controller => "saves", :action => "edit"
  post "/update_save/:id", :controller => "saves", :action => "update"

  # DELETE
  get "/delete_save/:id", :controller => "saves", :action => "destroy"
  #------------------------------

  # Routes for the Garden resource:
  # CREATE
  get "/gardens/new", :controller => "gardens", :action => "new"
  post "/create_garden", :controller => "gardens", :action => "create"


  # READ
  get "/gardens", :controller => "gardens", :action => "index"
  get "/gardens/:id", :controller => "gardens", :action => "show"

  # UPDATE
  get "/gardens/:id/edit", :controller => "gardens", :action => "edit"
  post "/update_garden/:id", :controller => "gardens", :action => "update"

  # DELETE
  get "/delete_garden/:id", :controller => "gardens", :action => "destroy"
  #------------------------------

 devise_for :users
root "welcome#index"

  # Routes for the User_plant resource:
  # CREATE
  get "/user_plants/new", :controller => "user_plants", :action => "new"
  post "/create_user_plant", :controller => "user_plants", :action => "create"

  # READ
  get "/user_plants", :controller => "user_plants", :action => "index"
  get "/user_plants/:id", :controller => "user_plants", :action => "show"

  # UPDATE
  get "/user_plants/:id/edit", :controller => "user_plants", :action => "edit"
  post "/update_user_plant/:id", :controller => "user_plants", :action => "update"

 # Watered?
  get "/user_plants/:id/watercheck", :controller => "user_plants", :action => "watercheck"
  post "/update_user_plant/:id", :controller => "user_plants", :action => "update"

  # DELETE
  get "/delete_user_plant/:id", :controller => "user_plants", :action => "destroy"
  #------------------------------

  # Routes for the Plant resource:
  # CREATE
  get "/plants/new", :controller => "plants", :action => "new"
  post "/create_plant", :controller => "plants", :action => "create"

  # READ
  get "/plants", :controller => "plants", :action => "index"
  get "/plants/:id", :controller => "plants", :action => "show"

  # UPDATE
  get "/plants/:id/edit", :controller => "plants", :action => "edit"
  post "/update_plant/:id", :controller => "plants", :action => "update"

  # DELETE
  get "/delete_plant/:id", :controller => "plants", :action => "destroy"
  #------------------------------





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
