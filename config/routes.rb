Spree::Core::Engine.routes.draw do
  resources :events
  namespace :admin do
    resources :events do
      member do
        get :clone
      end
    end
  end
end
