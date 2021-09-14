Rails.application.routes.draw do
  #mount ForestLiana::Engine => '/forest'
  devise_for :users

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :reqs do
    resources :users

    resources :users do
      member do
        post 'message', to: "users#message"
        post 'archive', to: "users#archived"
      end
    end
  end
end

