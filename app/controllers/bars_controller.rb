class BarsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :local_bars, :index]
  def index
    authorize @bar
    @bars = Bar.all
  end

  def local_bars
    @ip = request.remote_ip
    if @ip == "::1"
      @coordinates = [51.5704, 0.1278]
    else
      @user_location = JSON.parse(open("http://iplocate.io/api/lookup/#{@ip}").read)
      @coordinates = [@user_location['latitude'], @user_location['longitude']]
    end
    if @coordinates[0] && @coordinates[1]
      @bars = Bar.near([@coordinates[0], @coordinates[1]], 2)
    else
      @bars = Bar.all
    end
  end

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
