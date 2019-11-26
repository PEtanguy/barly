Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


# BARS ROUTES
  # get "bars/:id", to: "bars#show"
  # get "bars/:id/edit", to: "bars#edit"
  # patch "bars/:id", to: "bars#update"
  # delete "bars/:id", to: "bars#destroy"

  resources :bars, only: [ :show, :edit, :update, :delete ] do
    collection do
      get "local_bars", to: "bars#local_bars"
    end
    resources :menu_items
    resources :orders, only: [ :index, :show, :new, :create]
    get "bars/:bar_id/orders/:id/make", to: "orders#make"
    get "bars/:bar_id/orders/:id/finish", to: "orders#finish"
  end

  resources :menu_items, only: [] do
    resources :basket_items
  end

  resources :users, only: [] do
    resources :basket
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
