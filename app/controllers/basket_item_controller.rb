class BasketItemController < ApplicationController






  def new
    @basket_item = Basket_item.new
  end

  def create
    @basket_item = Basket_item.new(basket_item_params)
    if @basket_item.save
      # redirect_to new_basket_item_dose_path(@basket_item)
    else
      render :new
    end
  end

  def edit
    authorize @basket_item
    @basket_item = Basket_item.find(params[:id])
  end

  def update
    authorize @basket_item
    if @basket_item.update(basket_item_params)
      redirect_to basket_item_path(@basket_item)
    else
      render :edit
    end

  end

  def delete
    authorize @basket_item
    @basket_item = Basket_item.find(params[:id])
    @basket_item.destroy
    redirect_to root_path
  end

end
