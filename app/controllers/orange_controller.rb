require 'net/http'
require 'uri'

class OrangeController < ApplicationController
	def index
		api_key = ENV["MBTA_KEY"]
		routes = [903, 913]
		@orange_routes = []
		@green_routes = []
		routes.each do |route_num|
			uri = URI("http://realtime.mbta.com/developer/api/v2/stopsbyroute?api_key=#{api_key}&route=#{route_num}_&format=json")
			response = Net::HTTP.get(uri)
			route_json = JSON.parse(response)
			@orange_routes << route_json
		end
	end

	def show
		station = params[:id]
		api_key = ENV["MBTA_KEY"]
		uri = URI("http://realtime.mbta.com/developer/api/v2/predictionsbystop?api_key=#{api_key}&stop=#{station}&format=json")
		response = Net::HTTP.get(uri)
		@station_data = JSON.parse(response)
	end
end