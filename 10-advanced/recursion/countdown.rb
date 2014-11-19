def countdown(count)
  while count > 0
    puts count
    count -= 1
    sleep 0.5
  end

  puts "Blastoff"
end

countdown(10)

def countdown_recursive(count)
  puts count
  sleep 0.5
  if count > 1
    countdown_recursive(count - 1)
  else
    puts "Blastoff"
  end
end

countdown_recursive(10)
