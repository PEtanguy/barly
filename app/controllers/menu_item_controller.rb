class MenuItemController < ApplicationController

def index
    authorize @menu_item
    @menu_items = Menu_item.all
  end

  def show
    authorize @menu_item
    @menu_item = Menu_item.find(params[:id])
  end

  def new
    @menu_item = Menu_item.new
  end

  def create
    @menu_item = Menu_item.new(menu_item_params)
    if @menu_item.save
      # redirect_to new_menu_item_dose_path(@menu_item)
    else
      render :new
    end
  end

  def edit
    authorize @menu_item
    @menu_item = Menu_item.find(params[:id])
  end

  def update
    authorize @menu_item
    if @menu_item.update(menu_item_params)
      redirect_to menu_item_path(@menu_item)
    else
      render :edit
    end

  end

  def delete
    authorize @menu_item
    @menu_item = Menu_item.find(params[:id])
    @menu_item.destroy
    redirect_to root_path
  end

end




