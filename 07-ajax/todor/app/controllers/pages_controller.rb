class PagesController < ApplicationController
  def about
  end

  def ajaxdemo
  end

  def time
    render :text => (Time.now).to_s
  end
end
