class BasketsController < ApplicationController
  # def index
  #   @basket_items = current_user.basket_items
  #   @basket = policy_scope(Basket)
  # end

  def show
    @basket = Basket.find(current_user.basket.id) || Basket.create(user: current_user)
    authorize @basket
  end

  # private

  # def basket_params
  #   params.require(:basket_item).permit()
  # end
end
