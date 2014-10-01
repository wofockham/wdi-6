class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    work = Work.create work_params
    redirect_to work
  end

  def show
    @work = Work.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
    work = Work.find params[:id]
    work.destroy
    redirect_to works_path
  end

  private
  def work_params
    params.require(:work).permit(:title, :year, :medium, :style, :image)
  end
end
