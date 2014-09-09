
def greet_the_world
  puts "Hey there crummy world, how YOU doing"
end

greet_the_world

def add_2_and_3
  puts "About to calculate 2 + 3 for you"
  2 + 3
end

def add(num1, num2)
  puts "num1 has the value: #{ num1 }"
  puts "num2 has the value: #{ num2 }"
  result = num1 + num2
  puts "result is then: #{ result }"
  result
end

result = add(20, 13)
puts result

result2 = add(1, 2)

result3 = add(-1001, 55)

def area(length, width)
  length * width
end

def volume(length, width, height)
  area(length, width) * height
end

surface_area = area(10, 30)

capacity = volume(10, 20, 30)
puts capacity


def name_tag_generator(first, last, gender, age)
  if gender == 'f'
    if age < 19
      puts "Miss #{ first } #{ last }, age #{ age }"
    else
      puts "Ms #{ first } #{ last }, age #{ age }"
    end
  else
    puts "Mr #{ first } #{ last }, age #{ age }"
  end
end

name_tag_generator('Julia', 'Cristoffersen', 'f', 8)
















