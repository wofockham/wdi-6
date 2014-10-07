require 'open-uri'

class PinterestController < ApplicationController
  def results
    doc = Nokogiri::HTML(open("http://www.pinterest.com/search/pins/?q=#{ params[:query] }"))
    images = doc.css('img.pinImg')
    @urls = images.map do |i|
      i.get_attribute('src')
    end
  end
end
