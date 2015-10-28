Rails.application.routes.draw do
   resources :albums
   root 'albums#index'
   get    '/albums/:id(.:format)'  =>    'albums#show'

   get    '/albums(.:format)'    =>      'albums#index'

   get    '/albums/:id(.:format)'  =>    'albums#destroy'

   get 'albums/new'
end
