Rails.application.routes.draw do

   root 'guides#index'

   resources :guides do
     collection do
       get :rated
     end
     resources :ratings
   end

   resources :destinations do
    resources :guides
  end

    resources :users do
      resources :guides, only: [:index]
  end

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/auth/facebook/callback' => 'sessions#fbcreate'

  delete '/logout', to: 'sessions#destroy'

  get '/highest_rated', to: 'guides#five_points'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
