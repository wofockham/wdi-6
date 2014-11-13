class Luhn
  attr_reader :number

  def initialize(n)
    @number = n
  end

  # You are not expected to understand this.
  def self.create(n)
    n = Luhn.new(n * 10)
    delta = 10 - (n.checksum % 10)
    n.number + delta
  end

  def checksum
    luhn = 0
    @number.to_s.reverse.split('').each_with_index do |digit, position|
      digit = digit.to_i
      if position.odd?
        digit = digit * 2
        digit -= 9 if (digit >= 10)
      end
      luhn += digit
    end
    luhn
  end

  # def checksum
  #   @number.to_s.reverse.split('').map.with_index do |digit, position|
  #     digit = digit.to_i
  #     if position.odd?
  #       digit = digit * 2
  #       digit -= 9 if (digit >= 10)
  #     end
  #     digit
  #   end.inject(:+)
  # end

  def valid?
    checksum % 10 == 0
  end
end

Luhn.new(2323_2005_7766_3554).valid?

n = Luhn.new(2323_2005_7766_3554)
n.valid?

require 'pry'
binding.pry
