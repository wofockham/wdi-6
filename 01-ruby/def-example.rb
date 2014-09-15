def measure_squiggliness(squiggle_factor)
  if squiggle_factor > 0.5
    puts "THINGS ARE SQUIGGLY"
  else
    puts "No squiggling here, sorry"
  end
end

squiggliness = Random.rand

puts "Current squiggliness: #{ squiggliness }"
measure_squiggliness(squiggliness)

squiggliness = Random.rand

puts "Current squiggliness: #{ squiggliness }"
measure_squiggliness(squiggliness)

squiggliness = Random.rand

puts "Current squiggliness: #{ squiggliness }"
measure_squiggliness(squiggliness)
