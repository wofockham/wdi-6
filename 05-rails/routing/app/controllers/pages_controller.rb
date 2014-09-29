class PagesController < ApplicationController
  def start
  end

  def a
  end

  def b
  end

  def one
    render :text => 'This is page 1', :layout => true
  end

  def two
    render :text => 'This is page 2', :layout => true
  end

  def three
    render :text => 'This is page 3', :layout => true
  end

  def door
    case params[:option].downcase
    when 'a' then redirect_to('/a')
    when 'b' then redirect_to('/b')
    when '1' then redirect_to('/1')
    when '2' then redirect_to('/2')
    when '3' then redirect_to('/3')
    else redirect_to('/')
    end
  end
end
