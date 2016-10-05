Rails.application.routes.draw do
  get 'dogs', to: 'dogs#index'

  get 'premier', to: 'dogs#premier'

  get 'dogs/:id', to: 'dogs#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
