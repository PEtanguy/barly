class MenuItemsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index, :show ]

def index
    @bar = Bar.find(params[:bar_id])
    @menu_items = policy_scope(MenuItem)
  end

  def show
    @menu_item = MenuItem.find(params[:id])
    authorize @menu_item
  end

  def new
    @bar = Bar.find(params[:bar_id])
    @menu_item = MenuItem.new
    authorize @menu_item
  end

  def create
    @bar = Bar.find(params[:bar_id])
    @menu_item = MenuItem.new(menu_item_params)
    @menu_item.bar = @bar

    if @menu_item.save
      redirect_to bar_menu_items_path(@bar)
    else
      render :new
    end
    authorize @menu_item
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

  def menu_item_params
    params.require(:menu_item).permit(:name, :price, :description, :ingredients, :drink_photo)
  end
end




