class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @bars = Bar.all
    @markers = @bars.map do |b|
      {
        lat: b.latitude,
        lng: b.longitude
      }
    end
  end
end
