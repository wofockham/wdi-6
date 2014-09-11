bros = ['Groucho', 'Harpo', 'Chico']

# counter = 0
# while counter < bros.length
#   puts bros[counter]
#   counter += 1
# end

# prefix = "His Royal Highness"
# bros.each do |recipient|
#   puts "Yay pizza for #{ prefix } #{ recipient }"
# end

# scores = [247, 2328, 111, 58, 17]
# scores.each do |brother|
#   # puts
#   # puts "$" * brother
#   # puts
# end

instruments = {
  'groucho' => ['guitar', 'harmonica'],
  'harpo' => ['harp'],
  'chico' => ['piano']
}

instruments.each do |guy, music_thing|
  puts "#{ guy.upcase } plays #{ music_thing[0] }."
  puts "He also plays #{ music_thing[1] }." unless music_thing.length < 2
end

groucho = {
  :instrument => 'guitar',
  :vice => 'cigars',
  :yob => 1890
}
harpo = {
  :instrument => 'harp',
  :vice => 'mutism',
  :yob => 1888
}
chico = {
  :instrument => 'piano',
  :vice => 'women',
  :yob => 1887
}

bros = [groucho, harpo, chico]
guitar_bros = bros.select do |b|
  b[:instrument] == 'guitar'
end

# 11.times do |number|
#   puts "Yay pizza #{ number }"
# end

# (5..15).each do |k|
#   puts "Yay hippies"
# end



