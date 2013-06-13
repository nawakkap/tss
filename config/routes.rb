Tss::Application.routes.draw do
  resources :products


  resources :slit_specs


  resources :films


  resources :coil_film_mappings


  resources :coils do
    collection do
      get 'to_slitter'
    end
  end


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end