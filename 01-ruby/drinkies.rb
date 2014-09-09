print "Please enter your age (in Earth years): "
user_age = gets.chomp.to_i # You can "chain" methods together

def check_legality(age)
  print "You are #{ age }, "

  if age >= 18
    puts "Drink up to numb the pain"
  else
    puts "You gotta wait for legality!"
  end
end

check_legality(user_age)

check_legality(17)
