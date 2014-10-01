class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
  end

  def show
    @artist = Artist.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end