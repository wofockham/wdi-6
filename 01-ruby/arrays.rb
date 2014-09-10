# 1
days_of_the_week = %w{ Monday Tuesday Wednesday Thursday Friday Saturday Sunday}

p days_of_the_week

# 2
days_of_the_week.unshift days_of_the_week.pop

p days_of_the_week

# 3
# days_of_the_week = [ days_of_the_week[1..5], [days_of_the_week.last, days_of_the_week.first] ]
days_of_the_week = [%w{ Monday Tuesday Wednesday Thursday Friday}, %w{Saturday Sunday}]
p days_of_the_week

# 4
days_of_the_week.shift
p days_of_the_week

# 5
days_of_the_week.flatten!.sort!
p days_of_the_week

# Bonus
bros = ['Groucho', 'Harpo', 'Chico', 'Zeppo']
puts bros.join '!!! '

bros = "Groucho J. Marx, Harpo Marx, Chico Marx".split(', ')















