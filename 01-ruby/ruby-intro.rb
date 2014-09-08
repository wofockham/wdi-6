# This is my first WDI Ruby program.
puts "Hello World from Ruby"

# NUMBERS
# Integers
1
58
0
-12 # This is negative

# Floating (decimals)
26.2
9.995
-3.14159

# STRINGS
"Some string"
"goldfish"
'single quotes'
"double quotes"
"here is a contraction: isn't it"
# 'this won't work'

## BOOLEANS
true
false


## VARIABLES
favourite_fruit = "pineapples"
b = 42

puts favourite_fruit
puts b

# We use snake case for variables in Ruby.
this_is_snake_case = 'it has underscores between each word'

# ThisIsCalledCamelCase # This is used for classes in Ruby.

# CONSTANTS ARE IN UPPER CASE
ANSWER_TO_LIFE_THE_UNIVERSE_AND_EVERYTHING = 42
EARTH_MOON_COUNT = 1



## ARITHMETIC
2 + 2
1 - 5
4 / 2
5 / 2 # Integer division.
5.0 / 2 # Floating point division.
5 % 2 # Modulus operator (returns the remainder after a division)
6 * 9
6 ** 2

beth = 4
beth = beth + 2
beth += 2 # Same thing
beth -= 30

"Grape" + 'fruit'
"The cost is $" + beth.to_s + " including GST"

# Interpolation
"The cost is $#{ beth } including GST"

"The result is #{ 2 + 4 }"

name = 'Juan'
beverage = 'Single malt scotch'

puts "My name is #{ name } and my favourite drink is #{ beverage }."























