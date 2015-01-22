require 'net/http'
require 'uri'

class StopsController < ApplicationController

  def show
    stop = Stop.find(params[:id])
    station = stop.parent_station
    api_key = ENV["api_key"]
    uri = URI("http://realtime.mbta.com/developer/api/v2/predictionsbystop?api_key=#{api_key}&stop=#{station}&format=json")
    response = Net::HTTP.get(uri)
    @station_data = JSON.parse(response)
  end

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.new(stop_params)
    if @stop.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def stop_params
    params.require(:stop).permit(:name, :train_id, :parent_station)
  end
end
