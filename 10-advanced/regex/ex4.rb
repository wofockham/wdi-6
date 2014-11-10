ARGF.each do |line|
  puts line if line =~ /\b[A-Z][a-z]/ # \b matches a word boundary.
end
