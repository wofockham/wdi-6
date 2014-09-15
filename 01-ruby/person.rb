class Person
  attr_accessor :age, :gender, :name, :instrument

  def initialize(age, gender, name, instrument)
    @age = age
    @gender = gender
    @name = name
    @instrument = instrument
  end

  def play
    puts "#{ @name } is playing their #{ @instrument }"
  end

  def talk(words_to_say)
    puts "Well, #{ words_to_say }"
  end
end

require 'pry'
binding.pry

