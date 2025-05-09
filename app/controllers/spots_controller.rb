class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def new
  end

  def create
    @spot = Spot.new(spot_params)
      if @spot.save
        redirect_to @spot, notice: "スポットが登録されました"
      else
        render :new
      end
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :spot_image, :summary, :latitude, :longitude, :town_id)
  end
end
