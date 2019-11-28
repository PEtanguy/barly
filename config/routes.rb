Rails.application.routes.draw do
  devise_for :users
  authenticate :user do
    if current_user.bar
      root to: "bars#my_bar"
    else
      root to: 'pages#home'
    end
  end
  root to: 'pages#home'

# BARS ROUTES
  # get "bars/:id", to: "bars#show"
  # get "bars/:id/edit", to: "bars#edit"
  # patch "bars/:id", to: "bars#update"
  # delete "bars/:id", to: "bars#destroy"

    get "map", to: "bars#map"
    # get "local_bars", to: "bars#local_bars"

  resources :bars, only: [ :show, :edit, :update, :delete ] do
    collection do
      get "my_bar", to: "bars#my_bar"
      # get "local_bars", to: "bars#local_bars"
    end
    resources :menu_items
    resources :orders, only: [ :index, :show, :new, :create]
    get "bars/:bar_id/orders/:id/make", to: "orders#make"
    get "bars/:bar_id/orders/:id/finish", to: "orders#finish"
  end

  resources :menu_items, only: [] do
    resources :basket_items
  end

  get '/basket', to: 'baskets#show'


  resources :users, only: [] do
    resources :baskets
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
