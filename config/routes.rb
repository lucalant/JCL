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




  resources :admin, :only => [:index, :company,:designer,:distribution,:event,:partner,:service,:topClient,:workspace]
  match 'admin' => 'admin#index', :via => :get, :as => :admins
  match 'new_company' => 'admin#company', :via => :get
  match 'new_designer' => 'admin#designer', :via => :get
  match 'new_distribution' => 'admin#distribution', :via => :get
  match 'new_event' => 'admin#event', :via => :get
  match 'new_partner' => 'admin#partner', :via => :get
  match 'new_service' => 'admin#service', :via => :get
  match 'new_topClient' => 'admin#topClient', :via => :get
  match 'new_workspace' => 'admin#workspace', :via => :get



  resources :company, :only => [:history, :identity]
  match 'identity' => 'company#Identity', :via => :get
  match 'history' => 'company#History', :via => :get

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
  match 'type_home_products' => 'home_products#all_types', :via => :get
  match 'room_home_products' => 'home_products#all_rooms', :via => :get
  match 'home_products_by_room' => 'home_products#products_by_room', :via => :get
  match 'home_products_by_type' => 'home_products#home_products_by_type', :via => :get
  match 'home_product_distribution' => 'home_products#home_distribution', :via => :get
  match 'home_products_create' => 'home_products#create', :via => :get
  match 'home_products' => 'home_products#index', :via => :get
  match 'new_home_products' => 'home_products#new_home_products', :via => :get


  resources :designer, :only => [:index, :about,:works, :home_products_of_designer, :workspaces_of_designer]
  match 'designers' => 'designer#index', :via => :get
  match 'designer_about' => 'designer#about', :via => :get
  match 'designers_works' => 'designer#works', :via => :get
  match 'designers_home_products' => 'designer#home_products_of_designer', :via => :get
  match 'designers_workspaces' => 'designer#workspaces_of_designer', :via => :get


  resources :service, :only => [:assistance, :interior_design, :personalization, :repair, :show]
  match 'services' => 'service#show', :via => :get
  match 'services_assistance' => 'service#assistance', :via => :get
  match 'services_interior_design' => 'service#interior_design', :via => :get
  match 'services_personalization' => 'service#personalization', :via => :get
  match 'services_repair' => 'service#repair', :via => :get

  resources :top_client, :only => [:show,:all_top_clients]
  match 'top_client' => 'top_client#show', :via => :get
  match 'all_top_clients' => 'top_clients#all_top_clients', :via => :get

  resources :distribution, :only => [:index, :map, :retail_shops,:showrooms,:assistant_points,:types, :home_products_of_distribution, :workspaces_of_distribution]
  match 'distribution' => 'distribution#index', :via => :get
  match 'distribution_map' => 'distribution#map', :via => :get
  match 'distribution_retailsShops_' => 'distribution#retail_shops', :via => :get
  match 'distribution_showrooms' => 'distribution#showrooms', :via => :get
  match 'distribution_assistantPoints' => 'distribution#assistant_points', :via => :get
  match 'distribution_types' => 'distribution#types', :via => :get
  match 'distributions_home_products' => 'distribution#home_products_of_distribution', :via => :get
  match 'distributions_workspaces' => 'distribution#workspaces_of_distribution', :via => :get


  resources :event, :only => [:index, :media,:all_events ,:events_by_month, :about]
  match 'events' => 'event#index', :via => :get
  match 'about_event' => 'event#about', :via => :get
  match 'events_media' => 'event#media', :via => :get
  match 'events_all_events' => 'event#all_events', :via => :get
  match 'events_events_by_month' => 'event#events_by_month', :via => :get

  resources :faq, :only => [:text,:form]
  match 'faq' => 'faq#text', :via => :get
  match 'faq_form' => 'faq#form', :via => :get

  resources :contact, :only => [:text,:map]
  match 'contacts' => 'contact#text', :via => :get
  match 'contacts_map' => 'contact#map', :via => :get


  resources :press, :only => [:news, :magazine]
  match 'news' => 'press#news', :via => :get
  match 'magazine' => 'press#magazine', :via => :get


  root :to => 'home#index'

  match 'home' => 'home#index'     , :via => :get




end
