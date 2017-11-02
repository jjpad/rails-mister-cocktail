Rails.application.routes.draw do

  resources :cocktails do
    resources :doses , only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  # root 'cocktails#index'
# we want to not destory the cocktail id so delete for dose is separate

end
