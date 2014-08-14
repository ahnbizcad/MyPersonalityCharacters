MyPersonalityCharacters::Application.routes.draw do
  root "characters#index"

  #namespace :characters do 
  #  get 'whatever'
  #end

# Dynamic routes

  concern :comment_votes do
    member do
      get 'vote_up_comment'
      get 'vote_down_comment'
    end
  end

  concern :socionics_votes do
    member do
      post 'vote_socionics'
    end
  end

  resources :comments, only: [:create, :destroy], concerns: :comment_votes

  resources :universes
  resources :characters,  concerns: :socionics_votes
  resources :celebrities, concerns: :socionics_votes
  resources :users,       concerns: :socionics_votes
  
  devise_for :users, :skip => [:sessions, :registration]
  devise_for :user, :path => '', :path_names => { :sign_in => "login", 
                                                  :sign_out => "logout", 
                                                  :sign_up => "register", 
                                                  :account_update => "account-settings" }
  #devise_scope :user do
  #  get '/login', to: "devise/sessions#new", as: :login
  #  delete '/logout', to: "devise/sessions#destroy", as: :logout
  #  get '/sign_up', to: "devise/registration#new", as: :sign_up
  #end

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


  # Static pages  
    namespace :pages do
      get "about"
      get "contact"
      get "spritz_login_success"
      get "spritz_test_1"
    end

  # Static pages - socionics
  resources :socionics_pages do 
    collection do        

      # Socions Aliases.
      get 'entp', to: 'socionics_pages#neti'
      get 'isfp', to: 'socionics_pages#sife'
      get 'esfj', to: 'socionics_pages#fesi'
      get 'intj', to: 'socionics_pages#tine'

      get 'enfj', to: 'socionics_pages#feni'
      get 'istj', to: 'socionics_pages#tise'
      get 'estp', to: 'socionics_pages#seti'
      get 'infp', to: 'socionics_pages#nife'  

      get 'esfp', to: 'socionics_pages#sefi'
      get 'intp', to: 'socionics_pages#nite'
      get 'entj', to: 'socionics_pages#teni'
      get 'isfj', to: 'socionics_pages#fise'

      get 'estj', to: 'socionics_pages#tesi'
      get 'infj', to: 'socionics_pages#fine'
      get 'enfp', to: 'socionics_pages#nefi'
      get 'istp', to: 'socionics_pages#site'        
      
      # Index.
      get 'socionics', to: 'socionics#index'

      # Socions.
      get 'socion'

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

      # Small Groups.
      get 'small_groups'
      get 'quadras'
      get 'clubs'
      get 'temperaments'
      get 'communication_styles'
      get 'romance_styles'

      # Intertype Relations.
      get 'intertype_relations'

    end
  end

end