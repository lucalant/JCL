JCLdesign::Application.routes.draw do

  get "workspace/collections"
  get "workspace/new"
  get "workspace/top"
  get "top_client/index"
  get "service/assistance"
  get "service/interiorDesign"
  get "service/Repair"
  get "service/Personalization"
  get "partner/introduction"
  get "partner/images"
  get "partner/contacts"
  get "home_product/index"
  get "home_product/top"
  get "home_product/new"
  get "home_product/types"
  get "home_product/rooms"
  get "event/index"
  get "event/media"
  get "distribution/index"
  get "distribution/map"
  get "designer/index"
  get "designer/works"
  get "company/history"
  get "company/identity"
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
  resources :designer, :only => [:index, :show, :new, :create]

  resources :distribution, :only => [:index]

  resources :event, :only => [:index, :show, :new, :create]

  resources :home_product, :only => [:index, :new, :top, :types, :show]

  resources :partner, :only => [:index, :images, :introduction, :contacts]

  resources :service, :only => [:index, :show, :new, :create]

  resources :top_client, :only => [:index, :show, :new, :create]

  resources :workspace, :only => [:index, :collections, :new, :top]

  resources :company, :only => [:history, :identity]



  match 'home' => 'home#index', :via => :get
  match 'admin' => 'admin#index', :via => :get, :as => :admins


  match 'company' => 'company#history', :via => :get
  match 'identity' => 'company#identity', :via => :get
  match 'history' => 'company#history', :via => :get

  match 'partners' => 'partner#index', :via => :get
  match 'introduction_partner' => 'partner#introduction', :via => :get
  match 'contacts_partner' => 'partner#contacts', :via => :get
  match 'images_partner' => 'partner#images', :via => :get

  match 'workspace' => 'workspace#index', :via => :get
  match 'collections' => 'workspace#collections', :via => :get
  match 'new_workspace' => 'workspace#new', :via => :get
  match 'top_workspace' => 'workspace#top', :via => :get

  match 'homeproducts' => 'home_product#show', :via => :get
  match 'top_homeproducts' => 'home_product#top', :via => :get
  match 'new_homeproducts' => 'home_product#new', :via => :get
  match 'types_homeproducts' => 'home_product#types', :via => :get
  match 'rooms_homeproducts' => 'home_product#rooms', :via => :get

  match 'designers' => 'designer#index', :via => :get

  match 'services' => 'service#index', :via => :get
  match 'assistance' => 'service#assistance', :via => :get
  match 'interior_design' => 'service#interior', :via => :get
  match 'repair' => 'service#repair', :via => :get
  match 'personalization' => 'service#personalization', :via => :get

  match 'distribution' => 'distribution#index', :via => :get
  match 'retail_shops' => 'distribution#retailshops', :via => :get
  match 'showrooms' => 'distribution#showrooms', :via => :get
  match 'assistance_points' => 'distribution#assistancepoints', :via => :get

  match 'faq' => 'util#faq', :via => :get
  match 'contacts' => 'util#contacts', :via => :get
  match 'log_in' => 'util#login', :via => :get
  match 'press' => 'util#press', :via => :get
  match 'news' => 'util#news', :via => :get
  match 'magazine' => 'util#magazine', :via => :get

  match 'events' => 'event#index', :via => :get


  root :to => 'home#index'


end
