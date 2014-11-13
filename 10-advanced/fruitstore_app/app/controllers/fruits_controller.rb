class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.reverse

    respond_to do |format|
      format.html {}
      format.json { render :json => @fruits }
    end
  end
end
