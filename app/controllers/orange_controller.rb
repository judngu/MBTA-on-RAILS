require 'net/http'
require 'uri'

class OrangeController < ApplicationController
	def index
		api_key = ENV["MBTA_KEY"]
		orange1 = URI("http://realtime.mbta.com/developer/api/v2/stopsbyroute?api_key=#{api_key}&route=903_&format=json")
		response = Net::HTTP.get(orange1)

		api_key = ENV["MBTA_KEY"]
		orange2 = URI("http://realtime.mbta.com/developer/api/v2/stopsbyroute?api_key=#{api_key}&route=913_&format=json")
		response2 = Net::HTTP.get(orange2)

		orangeline1 = JSON.parse(response)
		orangeline2 = JSON.parse(response2)

		@orange_routes = [orangeline1, orangeline2]
	end

	def show
		station = params[:id]
		api_key = ENV["MBTA_KEY"]
		uri = URI("http://realtime.mbta.com/developer/api/v2/predictionsbystop?api_key=#{api_key}&stop=#{station}&format=json")
		response = Net::HTTP.get(uri)
		@station_data = JSON.parse(response)
	end

end