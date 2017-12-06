class HomeController < ApplicationController

  def index
  	@json = {}
  	@destination = Destination.all
  	@pois = Poi.all
  	@city = Destination.distinct.pluck(:name)
  	@user = User.all.pluck(:name)
  	@json['cities'] = @city
  	@json['users'] = @user
  end

  def create
  	user = User.find_by_name(params[:home][:name])
  	trip = Trip.create(user_id: user.id,no_of_days: params[:home][:day_count],starting_day: params[:home][:starting_date],ending_day: params[:home][:ending_date],no_of_pax: params[:home][:pax_count],budget: params[:home][:amount],starting_place: params[:home][:starting_place],ending_place: params[:home][:ending_place])
  	params[:home][:itenaries].each do |itenary|
  		trip_details = TripDetail.create(trip_id: trip.id,destination: params[:home][:city],pois: itenary[:poi].split(',').join(','),no_of_days: itenary[:day])
  	end
  end
  
end
