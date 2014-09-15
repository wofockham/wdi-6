require 'pry'

class Year
  def initialize(year)
    @year = year
  end

  def leap?
    # Leap years are divisible by 4 but not 100 unless they are also divisible by 400.
     divides_by_4? && ( does_not_divide_by_100? || divides_by_400? )
  end

  def divides_by_4?
    (@year % 4) == 0
  end

  def does_not_divide_by_100?
    @year % 100 != 0
  end

  def divides_by_400?
    @year % 400 == 0
  end
end

# Monkeypatching!
class Fixnum
  def leap_year?
    Year.new(self).leap?
  end
end

# Year.new(1996).leap?

binding.pry

2014.times do |y|
  year = Year.new(y)
  puts "#{ y } is a leap year" if year.leap?
end
