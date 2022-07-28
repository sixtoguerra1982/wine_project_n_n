Rails.application.routes.draw do
  root to: 'pages#index'
  resources :strain_wines, only: [:index , :edit, :update, :destroy]
  resources :wines
  resources :strains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
