Eclectic::Application.routes.draw do
  
  namespace :admin do
    get 'users' => 'admin#index', as: 'users'
    get 'users/new' => 'admin#new', as: 'new_user'
    post 'users/create' => 'admin#create', as: 'create_user'
    get 'users/edit/:admin_user_id' => 'admin#update', as: 'user_edit'
    get 'users/delete/:admin_user_id' => 'admin#delete', as: 'user_delete'
    get 'products' => 'products#index', as: 'products'
    get "products/new" => 'products#new', as: 'new_product'
    get "products/destroy/:product_id" => 'products#destroy', as: 'product_delete'
    post "products/create" => 'products#create', as: 'create_product'
    get "products/edit/:product_id" => 'products#edit', as: 'product_edit'
    patch "products/update" => 'products#update', as: 'update_product'
    post "sessions/create" => 'sessions#create', as: 'sessions_create'
    get "logout" => 'sessions#destroy', as: 'logout'
    get '/' => 'sessions#index', as: 'log_in_form'
  end
  get "payment_notification" => "payment_notification#create"

  # match "/(:action)" => "home"
  post "createaccount/create" => 'createaccount#create', as: 'create'
  get 'cart' => 'cart#index'
  get 'cart/empty_cart' => 'cart#empty_cart'
  get 'product/add_to_cart/:id' => 'product#add_to_cart', as: 'add'
  post 'cart/remove_from_cart/:id' => 'cart#remove_from_cart', as: 'remove'
  get 'product/:id' => 'product#show', as: 'product'
  get 'products' => 'product#index', as: 'products'
  get 'products/friendship' => 'product#friendship', as: 'friendship'
  get 'products/survivorbracelets' => 'product#survivor', as: 'survivor'
  get 'products/:category/all' => 'product#find_all', as: 'find_all'
  get 'products/:category/:sub_gender' => 'product#category', as: 'category'
  patch 'account/update' => 'session#update', as: 'user_update'
  get 'account/orders' => 'session#orders', as: 'user_orders'
  post 'account/login' => 'session#create', as: 'log_in'
  get 'account/logout' => 'session#destroy', as: 'sign_out'
  get 'account' => 'session#index', as: 'account'
  get '/signup' => 'createaccount#index', as: 'create_account'
  get '/contact' => 'home#contact'
  get '/about' => 'home#about'

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
