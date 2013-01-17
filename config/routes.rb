ItInTheD::Application.routes.draw do


  resources :testimonials

  resources :resources

  resources :events

  resources :faq

  resources :org_types

  resources :about_us

  resources :students

  resources :organizations
  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout'}


  resources :contact_us

  resources :community


  resources :inquiries, :only => [:contact_us, :create] do
  get 'thank_you', :on => :collection
  end

  # match '/person/:id' => 'users#show'
  
  match '/search' => 'search#index', :as => :search
  match '/events/checkin/:id' => 'events#checkin', :as => :events_checkin
  match '/testimonials' => 'testimonials#show'
  match '/users/show/:id' => 'users#show'
  match '/people' => 'users#index', :as => :people
  match '/people/show/:id' => 'users#show', :as => :show_people
  match '/people/edit/:id' => 'users#edit', :as => :edit_people
  
  resources :users, :except => [:index, :show, :edit]
  
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  get '/something/:youtube_user' => "utube#index"
  root :to => 'home#index'


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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
