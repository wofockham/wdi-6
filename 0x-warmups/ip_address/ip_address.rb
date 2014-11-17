def valid_ip?(address)
  quads = address.split('.')
  quads.length == 4 && quads.all? do |quad|
    # Each part is made up purely of digits and as integers they're less than 256.
    (/^\d{1,3}$/ =~ quad) && (quad.to_i <= 255)
  end
end
