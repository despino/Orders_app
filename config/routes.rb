Rails.application.routes.draw do
  # URL get /group_members/17/new_order will call the new_order method in the GroupMembersController class
  match '/group_members/:group_members_id/new_order', {:via => :get, :to => 'group_members#new_order'}
  match '/group_members/:group_members_id/create_order', {:via => :post, :to => 'group_members#create_order'}
  resources :group_members

  root "welcome#index"
  #get '/' => 'welcome#index'
  #match '/', {:via => :get, :to => 'groups#index'}

  # URL get /groups/17/new_group_member will call the new_group_member method in the GroupsController class
  match '/groups/:group_id/new_group_member', {:via => :post, :to => 'groups#new_group_member'}
  resources :groups
  devise_for :users
  resources :orders
  # match 'users/:id', {:via => :post, :to => 'groups#user_id'}




  # match '/users/groups', {via: => :get, :to => 'groups#show'}
  # match 'users/:id/orders' => 'users#show', { via: => :get, to => 'orders#restaurant' }

  # match 'orders/:id', { :via => :get, :to => 'orders#Diner' }

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
