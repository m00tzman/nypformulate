Rails.application.routes.draw do

  resources :skids

  resources :shipments do
    resources 'skids'
  end

  root 'shipments#index'
end
