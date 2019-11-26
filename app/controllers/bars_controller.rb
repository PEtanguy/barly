class BarsController < ApplicationController


  # def index
  #   authorize @bar
  #   @bars = Bar.all
  # end
  def show
    @bar = Bar.find(params[:id])
    authorize @bar
  end

  def edit
    @bar = Bar.find(params[:id])
    authorize @bar
  end

  def update
    if @bar.update(bar_params)
      redirect_to bar_path(@bar)
    else
      render :edit
    end

    authorize @bar
  end

  def delete
    @bar = Bar.find(params[:id])
    @bar.destroy
    redirect_to root_path
    authorize @bar
  end



end
