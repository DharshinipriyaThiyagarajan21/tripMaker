class UserController < ApplicationController

	def index
		@users = User.all
	end

	def new
		@json = {}
		@city = Destination.distinct.pluck(:name)
		@country = Destination.distinct.pluck(:country)
		@json['cities'] = @city
		@json['countries'] = @country
	end

	def create
		if User.where(:email => params['user']['email']).present?
			render json: {'error': 'Email is already present. Try with it different email'}
		elsif params[:user] != nil
			user = User.create(name: params[:user][:name],area: params[:user][:address], city: params[:user][:city],  email: params[:user][:email],country: params[:user][:country], mobile: params[:user][:mobile].to_s)
			render json: true
		end
	end


end
