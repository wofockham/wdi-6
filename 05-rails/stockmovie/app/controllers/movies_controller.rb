class MoviesController < ApplicationController
  def index
  end

  def lookup
    url = "http://omdbapi.com/?t=#{ params[:title] }".gsub(' ', '+')
    data = HTTParty.get(url)
    @movie = JSON.parse(data)
  end
end
