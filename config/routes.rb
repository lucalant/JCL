JCLdesign::Application.routes.draw do


  get "home_products/create"
  get "home_products/products_by_room"
  get "home_products/home_products_by_type"
  get "home_products/new_home_products"
  get "home_products/top_home_products"
  get "home_products/index"
  get "home_products/all_rooms"
  get "home_products/all_types"
  get "home_products/home_distribution"
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




























  match 'home' => 'home#index', :via => :get
  match 'admin' => 'admin#index', :via => :get, :as => :admins

  resources :company, :only => [:history, :identity]
  match 'identity' => 'company#identity', :via => :get
  match 'history' => 'company#history', :via => :get

  resources :partner, :only => [:index, :images, :introduction, :contacts]

  match 'partners' => 'partner#index', :via => :get
  match 'introduction_partner' => 'partner#introduction', :via => :get
  match 'contacts_partner' => 'partner#contacts', :via => :get
  match 'images_partner' => 'partner#images', :via => :get

  resources :workspace, :only => [:presentation, :images, :new, :top, :images, :presentation, :collections, :collection]

  match 'collection' => 'workspace#collection', :via => :get
  match 'new_workspace' => 'workspace#new', :via => :get
  match 'top_workspace' => 'workspace#top', :via => :get
  match 'workspace_presentation' => 'workspace#presentation', :via => :get
  match 'workspace_images' => 'workspace#images', :via => :get

  resources :home_product, :only => [:index, :new, :top, :types, :type, :rooms, :room]
  match 'top_home_products' => 'home_product#top_home_products', :via => :get
  match 'new_home_products' => 'home_product#new_home_products', :via => :get
  match 'type_home_products' => 'home_product#all_types', :via => :get
  match 'room_home_products' => 'home_product#all_rooms', :via => :get
  match 'home_products_by_room' => 'home_product#products_by_room', :via => :get
  match 'home_product_distribution' => 'home_product#home_distribution', :via => :get
  match 'create_home_products' => 'home_product#create', :via => :get

  resources :designer, :only => [:index, :works]
  match 'designers' => 'designer#index', :via => :get
  match 'about_designer' => 'designer#about', :via => :get

  resources :service, :only => [:assistance, :interior_design, :personalization, :repair, :show]
  match 'services' => 'service#show', :via => :get

  resources :top_client, :only => [:index]
  match 'top client' => 'top_client#index', :via => :get

  resources :distribution, :only => [:index, :map]
  match 'distribution' => 'distribution#index', :via => :get
  match 'distribution_map' => 'distribution#map', :via => :get


  resources :event, :only => [:index, :media]
  match 'events' => 'event#index', :via => :get
  match 'events_media' => 'event#media', :via => :get

  resources :faq, :only => [:text]
  match 'faq' => 'faq#text', :via => :get

  resources :contact, :only => [:text]
  match 'contacts' => 'contact#text', :via => :get

  resources :press, :only => [:news, :magazine]
  match 'news' => 'press#news', :via => :get
  match 'magazine' => 'press#magazine', :via => :get


  root :to => 'home#index'

  match ':controller(/:action(/:id))(.:format)'


end
