# Shows the menu of available choices.
def menu
  puts "1. Add"
  puts "q. Quit"
  print "Enter your selection: "
end

# Reads the user's operation selection from the menu.
def read_selection
  menu
  gets.chomp
end

# Reads a user's number from the keyboard (as a floating point number).
def read_number
  print "Enter number: "
  gets.to_f
end

# Reads two numbers from the keyboard and adds them.
def add
  num1 = read_number
  num2 = read_number
  num1 + num2
end

# Get the user's initial choice.
user_choice = read_selection

# Loop until the user quits.
until user_choice == 'q'

  # Perform an operation based on the user's selection.
  case user_choice
  when '1'
    result = add
    puts "The result is #{ result }"
    puts "~" * 80
  else
    puts "Unrecognised selection."
  end

  user_choice = read_selection
end

puts "Have a nice day,"