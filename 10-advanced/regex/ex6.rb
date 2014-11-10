ARGF.each do |line|
  puts line if line =~ /fred/ && line =~ /wilma/
end
