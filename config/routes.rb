Spree::Core::Engine.routes.draw do
  resources :events, :only => [:index, :show]
  namespace :admin do
    resources :events do
      member do
        get :clone
      end
    end
  end
  get 'events/tag/:tag', :to => 'events#tag', :as => 'events_by_tag'
end
