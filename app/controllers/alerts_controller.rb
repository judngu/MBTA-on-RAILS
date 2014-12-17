require 'net/http'
require 'uri'
class AlertsController < ApplicationController
	def index
		api_key = ENV["api_key"]
		uri = URI("http://realtime.mbta.com/developer/api/v2/alerts?api_key=#{api_key}&format=json")
		response = Net::HTTP.get(uri)
		@alert_data = JSON.parse(response)
		
		#binding.pry
	end
end
