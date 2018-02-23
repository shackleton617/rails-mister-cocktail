

Rails.application.routes.draw do
  root to: 'pages#home'

  resources :cocktails do
      resources :doses, only: [:new, :create, :destroy]
  end

end
