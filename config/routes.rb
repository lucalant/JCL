JCLdesign::Application.routes.draw do


  get "top_clients/show"
  get "top_clients/all_top_clients"
  get "event/index"
  get "event/media"
  get "event/events_by_month"
  get "event/all_events"
  get "distribution/types"
  get "distribution/retail_shops"
  get "distribution/showrooms"
  get "distribution/assistance_points"
  get "distribution/index"
  get "distribution/map"
  get "designer/about"

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

  resources :workspace, :only => [:presentation, :images, :new, :top, :collection, :collections]

  match 'collections' => 'workspace#collections', :via => :get
  match 'collection' => 'workspace#collection', :via => :get
  match 'new_workspace' => 'workspace#new', :via => :get
  match 'top_workspace' => 'workspace#top', :via => :get
  match 'workspace' => 'workspace#presentation', :via => :get
  match 'workspace_images' => 'workspace#images', :via => :get

  resources :home_product, :only => [:index, :new_home_products, :top_home_products, :all_types, :all_rooms, :products_by_room, :home_distribution, :create, :products_by_type]
  match 'top_home_products' => 'home_products#top_home_products', :via => :get
  match 'new_home_products' => 'home_products#new_home_products', :via => :get
  match 'type_home_products' => 'home_products#all_types', :via => :get
  match 'room_home_products' => 'home_products#all_rooms', :via => :get
  match 'home_products_by_room' => 'home_products#products_by_room', :via => :get
  match 'home_products_by_type' => 'home_products#products_by_type', :via => :get
  match 'home_product_distribution' => 'home_products#home_distribution', :via => :get
  match 'home_products_create' => 'home_products#create', :via => :get
  match 'home_products' => 'home_products#index', :via => :get

  resources :designer, :only => [:index, :about,:works]
  match 'designers' => 'designer#index', :via => :get
  match '/designers/about' => 'designer#about', :via => :get
  match '/designers/works' => 'designer#works', :via => :get

  resources :service, :only => [:assistance, :interior_design, :personalization, :repair, :show]
  match 'services' => 'service#show', :via => :get
  match 'services_assistance' => 'service#assistance', :via => :get
  match 'services_interior_design' => 'service#interior_design', :via => :get
  match 'services_personalization' => 'service#personalization', :via => :get
  match 'services_repair' => 'service#repair', :via => :get

  resources :top_client, :only => [:index]
  match 'top client' => 'top_client#index', :via => :get

  resources :distribution, :only => [:index, :map]
  match 'distribution' => 'distribution#index', :via => :get
  match 'distribution_map' => 'distribution#map', :via => :get
  match '/distribution/retailsShops/' => 'distribution#retail_shops', :via => :get
  match '/distribution/showrooms/' => 'distribution#showrooms', :via => :get
  match '/distribution/assistantPoints/' => 'distribution#assistant_points', :via => :get


  resources :event, :only => [:index, :media,:all_events ,:events_by_month]
  match 'events' => 'event#index', :via => :get
  match 'events_media' => 'event#media', :via => :get
  match '/events/allEvents/' => 'event#all_events', :via => :get
  match '/events/eventsByMonth/' => 'event#events_by_month', :via => :get

  resources :faq, :only => [:text]
  match 'faq' => 'faq#text', :via => :get

  resources :contact, :only => [:text]
  match 'contacts' => 'contact#text', :via => :get

  resources :press, :only => [:news, :magazine]
  match 'news' => 'press#news', :via => :get
  match 'magazine' => 'press#magazine', :via => :get


  root :to => 'home#index'




end
