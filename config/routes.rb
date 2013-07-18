Eclectic::Application.routes.draw do
  
  get "payment_notification/create"

  # match "/(:action)" => "home"
  match '/custom/:action(/:id)' => 'custom#add_it', :as => 'add_it'
  match '/custom/:category/addclasp' => 'custom#add_clasp', :as => 'add_clasp'
  match '/custom/:category/addpendant' => 'custom#add_pendant', :as => 'add_pendant'
  match '/custom/:category/addspacerbeads' => 'custom#add_spacer_beads', :as => 'add_spacer_beads'
  match '/custom/:category/addmainbeads' => 'custom#add_main_beads', :as => 'add_main_beads'
  match '/custom/:category/addknot' => 'custom#add_knot', :as => 'add_knot'
  match '/custom/:category/addhemp' => 'custom#add_hemp_and_length', :as => 'add_hemp'
  match '/custom' => 'custom#index', :as => 'custom'
  match '/custom/(:pick)' => 'custom#category_pick' , :as => 'picked'
  match 'cart' => 'cart#index'
  match 'product/add_to_cart/:id' => 'product#add_to_cart', :as => 'add'
  match 'cart/remove_from_cart/:id' => 'cart#remove_from_cart', :as => 'remove'
  match 'product' => 'product#index'
  match 'product/accessories(/:subc)' => 'product#accessories', :as => 'accessories'
  match 'product/survivorbracelets' => 'product#survivor', :as => 'survivor'
  match 'product/(:id)' => 'product#show', :as => 'item'
  match 'product/:category/all' => 'product#find_all', :as => 'find_all'
  match 'product/:category(/:premade(/:gender))' => 'product#category', :as => 'category'
  match 'account/login' => 'account#login', :as => 'login'
  match '/creataccount' => 'creataccount#create', :as => 'createaccount'
  match '/contact' => 'home#contact'
  match '/about' => 'home#about'
  match '/' => 'home#index', :as => 'home'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   # match ':controller(/:action(/:id))(.:format)'
end
