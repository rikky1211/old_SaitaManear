class SpotsController < ApplicationController
  def index
    @spots = Spot.all
  end

  def new
  end
end
