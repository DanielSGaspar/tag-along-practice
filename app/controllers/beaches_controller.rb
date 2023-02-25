class BeachesController < ApplicationController
  def index
    @location = Location.find(params[:location_id])
    @beaches = Beach.where(location_id: @location)
  end

  def show
    @location = Location.find(params[:location_id])
    @beach = Beach.find(params[:id])
  end
end
