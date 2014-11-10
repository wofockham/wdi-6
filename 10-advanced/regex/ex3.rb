ARGF.each do |line|
  puts line if line =~ /\./ # Escape the special meaning.
end
