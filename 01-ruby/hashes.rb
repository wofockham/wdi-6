require 'pry'

# Per entity
groucho = {
  :instrument => 'guitar',
  :vice => 'cigars',
  :yob => 1890
}
harpo = {
  :instrument => 'harp',
  :vice => 'mutism',
  :yob => 1888
}
chico = {
  :instrument => 'piano',
  :vice => 'women',
  :yob => 1887
}

# Per relationship
instruments = {
  'groucho' => 'guitar',
  'harpo' => 'harp',
  'chico' => 'piano'
}
vices = {
  'groucho' => 'cigars',
  'harpo' => 'mutism',
  'chico' => 'women'
}

bros = [ groucho, chico, harpo ]

binding.pry
