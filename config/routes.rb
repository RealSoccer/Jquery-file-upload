JqueryFileuploadRailsExample::Application.routes.draw do
  resources :uploads
  root :to => 'uploads#index'
  resources :portfolios

end
