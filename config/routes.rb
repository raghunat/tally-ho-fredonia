Rails.application.routes.draw do

  root "login#authenticate"

  get "/dashboard", to: "dashboard#index"

  get "/delete-course/:id", to: "dashboard#delete_course"

  # REMOVE
  get "/create-example-class", to: "dashboard#example_new"
  get "/example-count/:courses_id/:users_id", to: "dashboard#create_counter"
  get "/bootstrap", to: "courses#bootstrap"
  get "/remove-counter/:course_id", to: "dashboard#remove_counter"
  get "/add", to: "courses#add"

  get "/register", to: "login#register"
  post "/create_user", to: "login#create_user"


  post "/save", to: "courses#save"
  post "/login", to: "login#login"

  get "/all-courses", to: "dashboard#all_courses"
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
