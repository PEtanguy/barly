class BasketsController < ApplicationController
  # def index
  #   @basket_items = current_user.basket_items
  #   @basket = policy_scope(Basket)
  # end

  def show
    @basket = Basket.find(current_user.basket.id) || Basket.create(user: current_user)
    if @basket.basket_items.any?
      @bar = @basket.basket_items.first.menu_item.bar

    end
    authorize @basket
  end

  def checkout
    @basket = Basket.find(current_user.basket.id)
    @bar = @basket.basket_items.first.menu_item.bar
    authorize @basket
  end

  def delete
    @basket = Basket.find(current_user.basket.id)
    @basket.destroy
    authorize @basket
  end
  # private

  # def basket_params
  #   params.require(:basket_item).permit()
  # end
end
