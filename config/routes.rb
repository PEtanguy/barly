Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


# BARS ROUTES
  # get "bars/:id", to: "bars#show"
  # get "bars/:id/edit", to: "bars#edit"
  # patch "bars/:id", to: "bars#update"
  # delete "bars/:id", to: "bars#destroy"

  resources :bars, only: [ :show, :edit, :update, :delete ] do
    resources :menu_items
    resources :orders, only: [ :index, :show,:new, :create]
    resources :tables, only: [ :show, :edit, :update, :delete ]
    get "bars/:bar_id/orders/:id/make", to: "orders#make"
    get "bars/:bar_id/orders/:id/finish", to: "orders#finish"
  end



  # Custom routes for Orders



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
