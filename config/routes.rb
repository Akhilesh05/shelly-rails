Shelly::Application.routes.draw do
  get "learn/lesson1"
  get "learn/lesson2/:name", to: "learn#lesson2", constraints: {name: /[A-Za-z]+/}
  get "learn/lesson2"
  get "learn/lesson3"
  post "learn/lesson3"
  get "learn/lesson4"  #, constraints: { protocol: /https/ }
  get "learn/lesson5/:name", to: "learn#lesson5", constraints: {name: /[A-Za-z]+/}
  get "learn/lesson5"
  get "learn/lesson6"  #, constraints: { protocol: /https/ }
  get "learn/lesson7"  #, constraints: { protocol: /https/ }
  get "learn/lesson8"  #, constraints: { protocol: /https/ }
  root "welcome#home"
  get "welcome/home"  #, constraints: { protocol: /https/ }
  get "welcome/index"
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
