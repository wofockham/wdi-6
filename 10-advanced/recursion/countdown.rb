def countdown(count)
  while count > 0 # Condition
    puts count
    count -= 1 # Move closer to the termination condition.
    sleep 0.5
  end

  puts "Blastoff"
end

countdown(10)

def countdown_recursive(count)
  puts count
  sleep 0.5
  if count > 1 # Condition
    countdown_recursive(count - 1) # Move closer to the termination condition.
  else
    puts "Blastoff" # Base case.
  end
end

countdown_recursive(10)
