Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses , only: [:new, :create]
  end
  resources :doses, only: [:destroy]

# we want to not destory the cocktail id so delete for dose is separate

end
