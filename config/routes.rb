Rails.application.routes.draw do
  resources :posts

  get 'sessions/new'
  get 'pages/home'
  get 'dashboard', to: 'dashboard#index'
  get 'dashboard/events', to: 'dashboard#events'
  get 'dashboard/posts', to: 'dashboard#posts'
  get 'dashboard/prayers', to: 'dashboard#prayers'
  get 'c4c-signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'dashboard/events/new', to: 'dashboard#newEvent', as: 'dashboard_new_event'
  get 'dashboard/events/edit/:id', to: 'dashboard#editEvent', as: 'dashboard_edit_event'

  get 'dashboard/posts/edit/:id', to: 'dashboard#editPost', as: 'dashboard_edit_post'
  get 'dashboard/prayer/:id', to: 'dashboard#viewPrayer', as: 'dashboard_prayer'

  resources :users

  resources :events

  mount RedactorRails::Engine => '/redactor_rails'
  resources :prayers



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

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
