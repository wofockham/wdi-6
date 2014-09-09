# Equality and inequality
0 == 1
1 != 0
5 < 9
1.1 >= 1

# Boolean operators
true && true # "and"
true || false # "or"

!true # Negation
!!!false # Being a jerk.


if true
  puts "Something is true"
end


if (2 + 2) == 5
  puts "Uh oh"
end


if (4 + 3) == 8
  puts "Uh oh"
else
  puts "Mathematics is looking reasonable in Ruby"
end


marx_brother = 'groucho'

if marx_brother != 'groucho'
  puts "Where the hell is Groucho?"
end

unless marx_brother == 'groucho'
  puts "Where the hell is Groucho?"
end

class_grade = 'Z'
if class_grade == 'A'
  puts 'Well done, you massive nerd'
elsif class_grade == 'B'
  puts 'Underachiever'
elsif class_grade == 'C'
  puts 'Pick it up'
else
  puts 'Too bad'
end

case class_grade
  when 'A'
    puts 'Well done, you massive nerd'
  when 'B'
    puts 'Underachiever'
  when 'C'
    puts 'Pick it up'
  else
    puts 'Too bad'
end




























