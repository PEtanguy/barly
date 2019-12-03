class BasketItemsController < ApplicationController
  def new
    @basket_item = BasketItem.new
    @menu_item = MenuItem.find(params[:menu_item_id])
    if current_user.basket.basket_items.where(menu_item_id: @menu_item.id).present?
      @item_quantity = current_user.basket.basket_items.where(menu_item_id: @menu_item.id)[0].quantity
    else
      @item_quantity = 1
    end
    authorize @basket_item
    respond_to do |format|
      format.js
    end
  end

  def create
    @basket_item = BasketItem.find_or_initialize_by(menu_item_id: params[:menu_item_id].to_i)
    # @basket_item = BasketItem.new(basket_item_params)
    @basket_item.quantity = params.dig(:basket_item, :quantity).to_i
    @basket_item.menu_item_id = params[:menu_item_id]
    @basket = current_user.basket || Basket.create(user: current_user)
    @basket_item.basket = @basket

    if @basket_item.save!
      redirect_to bar_menu_items_path(MenuItem.where(id: params[:menu_item_id])[0].bar_id)
    else
      render :new
    end
    authorize @basket_item
  end

  def edit
    @basket_item = BasketItem.find(params[:id])
    @menu_item = MenuItem.find(@basket_item.menu_item.id)
    authorize @basket_item
    @item_quantity = current_user.basket.basket_items.where(menu_item_id: @menu_item)[0].quantity
    respond_to do |format|
      format.js
    end
  end

  def update
    @basket_item = BasketItem.find(params[:basket_item][:basket_item_id].to_i)
    if @basket_item.update(basket_item_params)
      authorize @basket_item
      redirect_to basket_path
    else
      render :edit
    end
  end

  def delete
    @basket_item = BasketItem.find(params[:id])
    @basket_item.destroy
    # redirect_to root_path
    authorize @basket_item
  end

  private

  def basket_item_params
    params.require(:basket_item).permit(:quantity)
  end
end
