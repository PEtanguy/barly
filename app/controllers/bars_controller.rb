class BarsController < ApplicationController


  def index
    authorize @bar
    @bars = Bar.all
  end

  def local_bars
    @ip = request.remote_ip
    if @ip == "::1"
      @coordinates = [51.7804, 1.0876]
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
      Bar.algolia_reindex!
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

  def map
    @bars = Bar.all
      authorize @bars
    @markers = @bars.map do |b|
      {
        lat: b.latitude,
        lng: b.longitude,
        # infoWindow: render_to_string(partial: "info_window", locals: { bar: b })
      }
    end
  end

  def my_bar


    @bar = Bar.where(user: current_user).first
     # @bar = current_user.bar
    authorize @bar
  end

  def my_bars
    @bars = Bar.where(user: current_user)

     # @bar = current_user.bar
    authorize @bars
  end
end
