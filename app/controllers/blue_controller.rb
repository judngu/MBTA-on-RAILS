require 'net/http'
require 'uri'

class BlueController < ApplicationController
	def index
		api_key = ENV["MBTA_KEY"]
		blue1 = URI("http://realtime.mbta.com/developer/api/v2/stopsbyroute?api_key=#{api_key}&route=946_&format=json")
		response = Net::HTTP.get(blue1)

		api_key = ENV["MBTA_KEY"]
		blue2 = URI("http://realtime.mbta.com/developer/api/v2/stopsbyroute?api_key=#{api_key}&route=948_&format=json")
		response2 = Net::HTTP.get(blue2)

		blue1 = JSON.parse(response)
		blue2 = JSON.parse(response2)

		@blue_routes = [blue1, blue2]
	end

	def show
		station = params[:id]
		api_key = ENV["MBTA_KEY"]
		uri = URI("http://realtime.mbta.com/developer/api/v2/predictionsbystop?api_key=#{api_key}&stop=#{station}&format=json")
		response = Net::HTTP.get(uri)
		@station_data = JSON.parse(response)
	end
end

