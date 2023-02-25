class RidesController < ApplicationController

  def new
    @location = Location.find(params[:location_id])
    @beach = Beach.find(params[:beach_id])
    @ride = Ride.new
  end

  def create
    @location = Location.find(params[:location_id])
    @ride = Ride.new(ride_params)
    @beach = Beach.find(params[:beach_id])
    date_params = [params[:ride]['date(1i)'], params[:ride]['date(2i)'], params[:ride]['date(3i)']]
    @ride.beach_id = @beach.id
    @ride.date = Date.parse(date_params.join('-'))
    if @ride.save
      redirect_to location_beach_path(@location, @beach)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def ride_params
    params.require(:ride).permit(:passenger_count, :board_capacity)
  end
end
