class LocationsController < ApplicationController
  def index
  end

  def result
    address = params[:address]
    @result = Geocoder.search(address).first
  end
end
