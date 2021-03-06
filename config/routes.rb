Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    # root to: "bars#my_bars"
    root to: "pages#home"
  end

  unauthenticated :user do
    root to: 'pages#home'
  end

# BARS ROUTES
  # get "bars/:id", to: "bars#show"
  # get "bars/:id/edit", to: "bars#edit"
  # patch "bars/:id", to: "bars#update"
  # delete "bars/:id", to: "bars#destroy"

    # get "map", to: "bars#map"
    # get "local_bars", to: "bars#local_bars"


    #NEW ROUTE FOR BARS INDEX





  resources :bars, only: [ :show, :edit, :update, :delete ] do
    collection do
      get "my_bar/:id", to: "bars#my_bar", as: "my_bar"
      get "my_bars", to: "bars#my_bars"
      # get "local_bars", to: "bars#local_bars"
    end
    resources :menu_items
    resources :orders, only: [ :index, :new, :create]
    get "bars/:bar_id/orders/:id/make", to: "orders#make"
    get "bars/:bar_id/orders/:id/finish", to: "orders#finish"
  end

  resources :menu_items, only: [] do
    resources :basket_items
  end
  get '/basket_item/:id/remove', to: 'baskets#destroyredirect', as: "redirect"


  get '/basket', to: 'baskets#show'
  get "/checkout", to: 'baskets#checkout'

  resources :users, only: [] do
    get "/list/", to: 'orders#list', as: "list"
    resources :baskets
  end

  resources :orders, only: [:show, :update]



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
