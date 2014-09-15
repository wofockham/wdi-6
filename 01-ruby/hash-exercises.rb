a = ["Anil", "Erik", "Jonathan"]
a[1]

a << "Your name"

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
h[1]
h[:two]
h["two"]

h[3] = "Three"
h[:four] = 4

is = {true => "It's true!", false => "It's false"}
is[2 + 2 == 4] # It's true!
is["Erik" == "Jonathan"] # It's false
is[9 > 10] # It's false
is[0] # nil
is["Erik"] # nil

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

users["Jonathan"][:twitter]
users["Erik"][:favorite_numbers].push 7
users['Pablo'] = { :twitter => 'juanburrito', :favorite_numbers => [8, 8, 8] }
users['Erik'][:favorite_numbers]
users['Erik'][:favorite_numbers].min



