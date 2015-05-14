Rails.application.routes.draw do

  resources :skids

  resources :shipments do
    get 'skids'
    post 'forms'
  end

  root 'shipments#index'
end
