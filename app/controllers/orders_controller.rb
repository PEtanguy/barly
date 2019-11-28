class OrdersController < ApplicationController
  def index
    @orders = policy_scope(Order)
  end

  def bar_index
    @orders = policy_scope(Order).where(bar: current_user.bar)
  end

  def show
    @order = Order.find(params[:id])
    authorize @order
  end

  def new
    @order = Order.new
    authorize @order
  end

  def create
    @order = Order.new(order_item_params)
    if @order.save
      # redirect_to new_basket_item_dose_path(@basket_item)
    else
      render :new
    end
    # en js faire un create.js.erb qui va nous afficher le basket avec option d'ajouter
    authorize @order
  end

  def make
    authorize @order
  end

  def finish
    authorize @order
  end
end
