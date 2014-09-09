print "What is 2 to the 16th power? "
guess = gets.to_i

while (guess != 2 ** 16)
  puts "Wrong! Guess again"

  print "What is 2 to the 16th power? "
  guess = gets.to_i
end

puts "You guessed correctly. Maybe you cheated."
