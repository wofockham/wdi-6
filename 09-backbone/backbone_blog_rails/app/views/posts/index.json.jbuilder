json.array!(@posts) do |post|
  json.extract! post, :id, :slug, :title, :content
  json.url post_url(post, format: :json)
end
