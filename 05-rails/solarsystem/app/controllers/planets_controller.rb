class PlanetsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    Planet.create planet_params
    redirect_to(planets_path)
  end

  def show
    @planet = Planet.find params[:id]
  end

  def destroy
    planet = Planet.find params[:id]
    planet.destroy
    redirect_to(planets_path)
  end

  def edit
  end

  private
  def planet_params
    # Strong params aka params whitelisting
    params.require(:planet).permit(:name, :image, :orbit, :diameter, :mass, :moons)
  end
end
