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
    @bar = Bar.find(params[:bar_id])
    @order.bar = @bar
    @order.status = 'pending'
    @order.user = current_user
    @order.basket = current_user.basket
    if @order.save!
      @order.basket.basket_items.each do |item|
        @order_item = OrderItem.new
        @order_item.order_id = @order.id
        @order_item.quantity = item.quantity
        @order_item.menu_item_price = item.menu_item.price
        @order_item.menu_item_name = item.menu_item.name
        @order_item.save!
      end
      redirect_to order_path(@order)
    # else
      # render :new
    end
    # en js faire un create.js.erb qui va nous afficher le basket avec option d'ajouter
    authorize @order
  end

  def list
    @orders = Order.where(user_id: current_user.id)
    authorize @orders
  end

  def order_item_params
    params.require(:order).permit(:table_id, :notes)
  end
end
