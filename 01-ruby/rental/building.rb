class Building
  attr_accessor :address, :style, :has_doorman, :has_elevator, :num_floors, :apartments

  def initialize(address, style, has_doorman, has_elevator, num_floors)
    @address = address
    @style = style
    @has_doorman = has_doorman
    @has_elevator = has_elevator
    @num_floors = num_floors
    @apartments = {}
  end

  def marx_bros
    puts "Zippeedeedoodah"
    ["Groucho", "Harpo", "Chico", "Zeppo"]
  end

  def demolish
    puts "KABOOM"
  end

  def to_s
    "This #{ @style } style building at #{ @address } has #{ @apartments.length } apartments."
  end
end
