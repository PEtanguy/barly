class OrderItemsController < ApplicationController
  def index
    @order_items = policy_scope(OrderItem)
  end
end
