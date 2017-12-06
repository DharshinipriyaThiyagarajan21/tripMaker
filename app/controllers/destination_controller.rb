class DestinationController < ApplicationController
	def index
		@destinations = Destination.all
	end

	def create
		destination = Destination.create(name: params[:destination][:city],country: params[:destination][:country],descriptions: params[:destination][:description],images: params[:destination][:images])
	end

end
