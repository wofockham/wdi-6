ARGF.each do |line|
  puts line if line =~ /([a-z])\1/ # \b matches a word boundary.
end
