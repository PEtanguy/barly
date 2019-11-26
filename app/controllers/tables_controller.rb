class TablesController < ApplicationController

def edit
    @table_item = Table_item.find(params[:id])
    authorize @table_item
  end

  def update
    if @table_item.update(table_item_params)
      redirect_to table_item_path(@table_item)
    else
      render :edit
    end
    authorize @table_item
  end

  def delete
    @table_item = Table_item.find(params[:id])
    @table_item.destroy
    redirect_to root_path
    authorize @table_item
  end
end
