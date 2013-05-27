Tss::Application.routes.draw do
  resources :films


  resources :coil_film_mappings


  resources :coils


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end