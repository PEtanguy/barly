class BasketItemsController < ApplicationController
  def new
    @basket_item = BasketItem.new
    @menu_item = MenuItem.find(params[:menu_item_id])
    authorize @basket_item
    respond_to do |format|
      format.js
    end
  end

  def create
    @basket_item = BasketItem.new(basket_params)
    @basket_item.menu_item_id = params[:menu_item_id]
    @basket = current_user.basket || Basket.create(user: current_user)
    @basket_item.basket = @basket
    if @basket_item.save!
      # redirect_to new_basket_item_dose_path(@basket_item)
    else
      render :new
    end
    authorize @basket_item
  end

  def edit
    @basket_item = BasketItem.find(params[:id])
    authorize @basket_item
  end

  def update
    if @basket_item.update(basket_item_params)
      redirect_to basket_item_path(@basket_item)
    else
      render :edit
    end
    authorize @basket_item
  end

  def delete
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
    redirect_to root_path
    authorize @basket_item
  end

  private

  def basket_params
    params.require(:basket_item).permit(:quantity)
  end
end
