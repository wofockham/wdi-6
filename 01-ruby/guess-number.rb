print "Enter the upper bound: "
upper_bound = gets.to_i

# Generate a secret number
secret = Random.rand(upper_bound + 1) # Up to AND INCLUDING the upper bound.

def read_guess
  print "Pretty please enter your guess: "
  gets.to_i
end

guess = read_guess

while guess != secret
  puts "That is incorrect. Bonehead."

  if guess > secret # Too high!
    puts "Guess lower!"
  elsif guess < secret # Too low!
    puts "Guess higher!"
  end

  guess = read_guess
end

puts "You guessed it! Good job!"
