class TableController < ApplicationController

def edit
    authorize @basket_item
    @table_item = Table_item.find(params[:id])
  end

  def update
    authorize @table_item
    if @table_item.update(table_item_params)
      redirect_to table_item_path(@table_item)
    else
      render :edit
    end

  end

  def delete
    authorize @table_item
    @table_item = Table_item.find(params[:id])
    @table_item.destroy
    redirect_to root_path
  end

end
