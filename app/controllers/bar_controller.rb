class BarController < ApplicationController


  def index
    authorize @bar
    @bars = Bar.all
  end

  def show
    authorize @bar
    @bar = Bar.find(params[:id])
  end

  def edit
    authorize @bar
    @bar = Bar.find(params[:id])
  end

  def update
    authorize @bar
    if @bar.update(bar_params)
      redirect_to bar_path(@bar)
    else
      render :edit
    end

  end

  def delete
    authorize @bar
    @bar = Bar.find(params[:id])
    @bar.destroy
    redirect_to root_path
  end



end
