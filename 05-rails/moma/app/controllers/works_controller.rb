class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
  end

  def create
  end

  def show
    @work = Work.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
