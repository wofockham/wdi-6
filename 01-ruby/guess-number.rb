print "Enter the upper bound: "
upper_bound = gets.to_i

# Generate a secret number
secret = Random.rand(upper_bound + 1) # Up to AND INCLUDING the upper bound.

print "Enter your guess: "
guess = gets.to_i

while guess != secret
  puts "That is incorrect. Bonehead."

  if guess > secret # Too high!
    puts "Guess lower!"
  elsif guess < secret # Too low!
    puts "Guess higher!"
  end

  print "Enter your guess: "
  guess = gets.to_i
end

puts "You guessed it! Good job!"
