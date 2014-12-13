require 'net/http'
require 'uri'

class RedController < ApplicationController
	def index
		api_key = ENV["MBTA_KEY"]
		red1 = URI("http://realtime.mbta.com/developer/api/v2/stopsbyroute?api_key=#{api_key}&route=931_&format=json")
		response = Net::HTTP.get(red1)

		api_key = ENV["MBTA_KEY"]
		red2 = URI("http://realtime.mbta.com/developer/api/v2/stopsbyroute?api_key=#{api_key}&route=933_&format=json")
		response2 = Net::HTTP.get(red2)

		@redline1 = JSON.parse(response)
		@redline2 = JSON.parse(response2)

	end

	def show
		station = params[:id]
		api_key = ENV["MBTA_KEY"]
		uri = URI("http://realtime.mbta.com/developer/api/v2/predictionsbystop?api_key=#{api_key}&stop=#{station}&format=json")
		response = Net::HTTP.get(uri)
		@station_data = JSON.parse(response)
		#binding.pry
	end
end
