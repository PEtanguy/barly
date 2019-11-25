class OrderController < ApplicationController

def index
    authorize @order
    @orders = Order.all
  end

  def show
    authorize @order
    @order = Order.find(params[:id])
  end

  def new
    @order_item = Order_item.new
  end

  def create
    @order_item = Order_item.new(order_item_params)
    if @basket_item.save
      # redirect_to new_basket_item_dose_path(@basket_item)
    else
      render :new
    end
  end

  def make
  end

  def finish
  end

end
