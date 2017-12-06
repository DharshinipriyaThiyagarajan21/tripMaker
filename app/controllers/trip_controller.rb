class TripController < ApplicationController
  
  def index
  	@trips = Trip.all
  end


	def new
		@json = {}
		@city = Destination.distinct.pluck(:name)
		@user = User.all.pluck(:name)
		@json['cities'] = @city
		@json['users'] = @user
	end

	def create
		user = User.find_by_name(params[:trip][:name])
		trip = Trip.create(user_id: user.id,no_of_days: params[:trip][:day_count],starting_day: params[:trip][:starting_date],ending_day: params[:trip][:ending_date],no_of_pax: params[:trip][:pax_count],budget: params[:trip][:amount],starting_place: params[:trip][:starting_place],ending_place: params[:trip][:ending_place])
		params[:trip][:itenaries].each do |itenary|
			trip_details = TripDetail.create(trip_id: trip.id,destination: itenary[:city],pois: itenary[:poi].split(',').join(','),no_of_days: itenary[:day])
		end 
	end

	# def get_data
	# 	destination = Destination.where("name LIKE '#{params[:trip][:data]}%'")
	# 	dest_id = destination.first.id
	# 	poi = Poi.where(destination_id: dest_id)
	# 	render json: {'pois': poi}
	# end

	def get_data
		destination = Destination.find_by_name(params[:trip][:data])
		dest_id = destination.id
		poi = Poi.where(destination_id: dest_id)
		render json: {'pois': poi}
	end

end
