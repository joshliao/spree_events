Spree::Core::Engine.routes.draw do
  #resources :events
  namespace :admin do
    resources :events
  end
end
