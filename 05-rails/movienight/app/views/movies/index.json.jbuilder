json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :obtained, :released, :rating, :description
  json.url movie_url(movie, format: :json)
end
