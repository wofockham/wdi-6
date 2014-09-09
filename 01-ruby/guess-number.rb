# Generate a secret number
secret = Random.rand(11)

print "Enter your guess: "
guess = gets.to_i

while guess != secret
  puts "That is incorrect. Bonehead."
  print "Enter your guess: "
  guess = gets.to_i
end

puts "You guessed it! Good job!"
