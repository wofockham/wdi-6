class Tenant
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "#{ @name } is #{ @age } years old and identifies as #{ @gender }."
  end
end

