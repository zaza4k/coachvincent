Coachvincent::Application.routes.draw do

  get "admin/dashboard"
  get "landing/index"
  get "pages/home"
  get "pages/exercices"
  get "pages/programmes"
  get "pages/dico"

  match '/dico', :to => 'pages#dico'



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
  devise_for :admins do
  get "/logout" => "devise/sessions#destroy", :as => :destroy_user_session
end 

  devise_for :admins, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'coachvincentinscriptionxxx'}
  
  resources :admins, only: [:show, :edit, :update]
  resources :exercices
  resources :programmes
  resources :dashboard

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

  authenticated :admin do
  root :to => 'admin/dashboard#index', :as => 'authenticated_root'
  end

  root :to => 'landing#index'
  
  # Rails 4 users must specify the 'as' option to give it a unique name
  # root :to => "main#dashboard", :as => "authenticated_root"
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
