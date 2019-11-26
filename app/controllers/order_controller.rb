class OrderController < ApplicationController

def index
    @orders = Order.all
    authorize @order
  end

  def show
    @order = Order.find(params[:id])
    authorize @order
  end

  def new
    @order_item = Order_item.new
    authorize @order
  end

  def create
    @order_item = Order_item.new(order_item_params)
    if @basket_item.save
      # redirect_to new_basket_item_dose_path(@basket_item)
    else
      render :new
    end
    authorize @order
  end

  def make
    authorize @order
  end

  def finish
    authorize @order
  end

end
