ActionController::Routing::Routes.draw do |map|
  map.resources :users, :only => [:show, :edit, :update]
end
