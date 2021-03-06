Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
  root to: 'pages#index'
  resources :users, only: [ :index, :show ]
  resources :posts do
      get "delete"
      get "edit"
    collection do
      get 'hobby'
      get 'study'
      get 'team'
      get 'apps'
      get 'companies'
      get 'inventions'
    end
  end
end
