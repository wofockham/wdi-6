print "Please enter your age (in Earth years): "
age = gets.chomp.to_i # You can "chain" methods together

if age >= 18
  puts "Drink up to numb the pain"
else
  puts "You gotta wait for legality!"
end
