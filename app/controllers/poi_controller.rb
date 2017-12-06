class PoiController < ApplicationController

	def index
		# @json = {}
		@pois = Poi.all
		# dest_id = Poi.all.pluck(:destination_id)
		# des = []
		# dest_id.each do |i|
		# 	des << Destination.find(i)
		# end
		# @destination = des
		# @json['pois'] = @pois
		# @json['destination'] = @destination
	end

	def new
		@json = {}
		@city = Destination.distinct.pluck(:name)
		@country = Destination.distinct.pluck(:country)
		@json['cities'] = @city
		@json['countries'] = @country
	end

	def create
		destination = Destination.find_by_name(params[:poi][:city])
		open_time = params[:poi][:open_time]
		close_time = params[:poi][:close_time]
		poi = Poi.create(name: params[:poi][:name],area: params[:poi][:address],description: params[:poi][:description],open_time: open_time,close_time: close_time,destination_id: destination.id,images: params[:poi][:images])
	end
end
