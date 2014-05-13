MyPersonalityCharacters::Application.routes.draw do
  root "characters#index"



  namespace :pages do
    get "about"
    get "contact"
    get "login_success"
  end
  
  get 'socionics/entp', to: 'socionics#neti'
  get 'socionics/isfp', to: 'socionics#sife'
  get 'socionics/esfj', to: 'socionics#fesi'
  get 'socionics/intj', to: 'socionics#tine'

  get 'socionics/enfj', to: 'socionics#feni'
  get 'socionics/istj', to: 'socionics#tise'
  get 'socionics/estp', to: 'socionics#seti'
  get 'socionics/infp', to: 'socionics#nife'  

  get 'socionics/esfp', to: 'socionics#sefi'
  get 'socionics/intp', to: 'socionics#nite'
  get 'socionics/entj', to: 'socionics#teni'
  get 'socionics/isfj', to: 'socionics#fise'

  get 'socionics/estj', to: 'socionics#tesi'
  get 'socionics/infj', to: 'socionics#fine'
  get 'socionics/enfp', to: 'socionics#nefi'
  get 'socionics/istp', to: 'socionics#site'

  get 'socionics', to: 'socionics#index', as: 'socionics'
  namespace :socionics do
    # Types.
    get 'neti'
    get 'sife'
    get 'fesi'
    get 'tine'

    get 'feni'
    get 'tise'
    get 'seti'
    get 'nife'

    get 'sefi'
    get 'nite'
    get 'teni'
    get 'fise'

    get 'tesi'
    get 'fine'
    get 'nefi'
    get 'site'

    # Intertype Relations.
    get 'intertype_relations'
    # Information Elements.
    get 'information_elements'
    get 'si'
    get 'se'
    get 'ni'
    get 'ne'
    get 'ti'
    get 'te'
    get 'fi'
    get 'fe'
    # Functions.
    get 'functions'
    get 'function_dichotomies'
    # Type Dichotomies.
    get 'type_dichotomies'
    get 'jungian_dichotomies'
    get 'socionics_jungian_dichotomies'
    # Small groups.
    get 'small_groups'
    get 'quadras'
    get 'clubs'
    get 'temperaments'
    get 'communication_styles'
    get 'romance_styles'
  end
  

  get 'mbti', to: 'mbti#index', as: 'mbti'
  namespace :mbti do
    get '', to: 'mbti#index'
  end

  resources :universes
  resources :characters
  resources :celebrities
  resources :users
  
  #devise_scope :user do
  #  get '/login', to: "devise/sessions#new", as: :login
  #  delete '/logout', to: "devise/sessions#destroy", as: :logout
  #  get '/sign_up', to: "devise/registration#new", as: :sign_up
  #end
  
  devise_for :users, :skip => [:sessions, :registration]

  devise_for :user, :path => '', :path_names => { :sign_in => "login", 
                                                  :sign_out => "logout", 
                                                  :sign_up => "register", 
                                                  :account_update => "account-settings" }
  #as :user do
  #    get    "/login"  => "devise/sessions#new",     :as => :new_user_session
  #    post   "/login"  => "devise/sessions#create",  :as => :user_session
  #    delete "/logout" => "devise/sessions#destroy", :as => :destroy_user_session
  #end


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