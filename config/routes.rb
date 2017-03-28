Rails.application.routes.draw do

  root 'mannequins#index'

  resources :mannequins do
    resources :wigs
    # get :test, to: "mannequins#not_restful"
    # resources :wigs, shallow: true
  end

  # resources :articles do
  #   resources :comments, shallow: true
  #   # resources :comments
  # end
end
