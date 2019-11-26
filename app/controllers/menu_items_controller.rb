class MenuItemsController < ApplicationController

def index
    @bar = Bar.find(params[:bar_id])
    @menu_items = policy_scope(MenuItem)
  end

  def show
    @menu_item = MenuItem.find(params[:id])
    authorize @menu_item

  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      # redirect_to new_menu_item_dose_path(@menu_item)
    else
      render :new
    end
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
    authorize @menu_item
  end

  def update
    if @menu_item.update(menu_item_params)
      authorize @menu_item

      redirect_to menu_item_path(@menu_item)
    else
      render :edit
    end

  end

  def delete
    @menu_item = MenuItem.find(params[:id])
    @menu_item.destroy
    redirect_to root_path
    authorize @menu_item
  end
end




