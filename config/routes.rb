JCLdesign::Application.routes.draw do

  get "press/magazine"
  get "press/news"
  get "faq/form"
  get "faq/text"
  get "contact/map"
  get "contact/text"
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

  resources :designer, :only => [:index, :works]

  resources :distribution, :only => [:index, :map]

  resources :event, :only => [:index, :media]

  resources :home_product, :only => [:index, :new, :top, :types, :type, :rooms, :room]

  resources :partner, :only => [:index, :images, :introduction, :contacts]

  resources :service, :only => [:assistance, :interior_design, :personalization, :repair, :show]

  resources :top_client, :only => [:index]

  resources :workspace, :only => [:presentation, :images, :new, :top, :images, :presentation, :collections, :collection]

  resources :company, :only => [:history, :identity]

  resources :press, :only => [:news, :magazine]

  resources :faq, :only => [:text]

  resources :contact, :only => [:text]




  match 'home' => 'home#index', :via => :get
  match 'admin' => 'admin#index', :via => :get, :as => :admins

  match 'identity' => 'company#identity', :via => :get
  match 'history' => 'company#history', :via => :get

  match 'partners' => 'partner#index', :via => :get
  match 'introduction_partner' => 'partner#introduction', :via => :get
  match 'contacts_partner' => 'partner#contacts', :via => :get
  match 'images_partner' => 'partner#images', :via => :get

  match 'workspace' => 'workspace#presentation', :via => :get
  match 'collection' => 'workspace#collection', :via => :get
  match 'new_workspace' => 'workspace#new', :via => :get
  match 'top_workspace' => 'workspace#top', :via => :get


  match 'top_home_products' => 'home_product#top', :via => :get
  match 'new_home_products' => 'home_product#new', :via => :get
  match 'type_home_products' => 'home_product#type', :via => :get
  match 'room_home_products' => 'home_product#room', :via => :get

  match 'designers' => 'designer#index', :via => :get

  match 'services' => 'service#show', :via => :get

  match 'distribution' => 'distribution#index', :via => :get

  match 'events' => 'event#index', :via => :get

  match 'faq' => 'faq#text', :via => :get
  match 'contacts' => 'contact#text', :via => :get
  match 'news' => 'press#news', :via => :get
  match 'magazine' => 'press#magazine', :via => :get


  root :to => 'home#index'


end
