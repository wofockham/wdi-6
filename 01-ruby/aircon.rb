print "What is the current temperature? "
current_temperature = gets.chomp.to_i

print "Is the air-conditioner operational? (y/n) "
working_air_con = (gets.chomp.downcase == 'y') # True is Y or y, false otherwise.

print "What is the desired temperature? "
desired_temperature = gets.chomp.to_i

def adjust_aircon(operational, current, desired)
  # There are many different ways to structure these statements:
  if operational
    if current > desired
      puts "Turn on the A/C Please"
    end
  else
    if current > desired
      puts "Fix the A/C now! It's hot!"
    elsif current < desired
      puts "Fix the A/C whenever you have the chance... It's cool..."
    end
  end
end

adjust_aircon(working_air_con, current_temperature, desired_temperature)

