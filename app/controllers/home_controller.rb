class HomeController < ApplicationController

  def index
  	@destination = Destination.all
  	@pois = Poi.all
  end
  
end
