def get_tags(text)
  text.scan /\#\S+/ # Returns an array of any #hashtag
end
