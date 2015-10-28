Rails.application.routes.draw do
  # You can have the root of your site routed with "root"
   resources :albums
   root 'albums#index'
   get    '/albums/:id(.:format)'  =>    'albums#show'

   get    '/albums(.:format)'    =>      'albums#index'

   get    '/albums/:id(.:format)'  =>    'albums#destroy'

   get 'albums/new'
end
