favourite_color = 'blue'

puts favourite_color

if 2 + 2 == 4
  favourite_color = 'red'
end

puts favourite_color # This should be 'red'...

def plunk_twanger
  favourite_color = 'pink'
  puts "Plunking the twanger"
  puts favourite_color
end

plunk_twanger

puts favourite_color # Still 'red'

#########################################################################################

title = 'Scottish Independence'

def make_headline(text)
  "<h1>" + text + "</h1>"
end

title = make_headline(title)

########################################################################################






