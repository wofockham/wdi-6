
squiggliness = Random.rand

puts "Current squiggliness: #{ squiggliness }"

if squiggliness > 0.75 || weird_mode == true
  puts "THINGS ARE SQUIGGLY"
elsif squiggliness > 0.25 || cheat_mode == true
  puts "Things are a bit squiggly"
elsif squiggliness > 0.1
  puts "Things are a tiny bit squiggly"
else
  puts "No squiggling here"
end

case squiggliness
when (0.75 .. 1)
  puts "Things are squiggly"
when (0.25 .. 0.75)
  puts "Things are a bit squiggly"
when (0.1 .. 0.25)
  puts "Things are a tiny bit squiggly"
else
  puts "No squiggling here"
end

