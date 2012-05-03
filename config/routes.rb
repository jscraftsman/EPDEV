Epdev::Application.routes.draw do
  resources :workshops
  root :to => 'workshops#index'
end
