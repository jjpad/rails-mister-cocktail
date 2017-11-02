Rails.application.routes.draw do
  # get 'doses/index'

  # get 'doses/new'

  # get 'doses/create'

  # get 'doses/edit'

  # get 'doses/update'

  # get 'doses/destroy'

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  # get 'cocktails/create'

  # get 'cocktails/edit'

  # get 'cocktails/update'

  # get 'cocktails/destroy'

  resources :cocktails do
    resources :doses , only: [:new, :create]
  end
  resources :doses, only: [:destroy]
# we want to not destory the cocktail id so delete for dose is separate

end
