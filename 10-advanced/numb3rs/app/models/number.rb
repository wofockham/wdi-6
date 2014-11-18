class Number
  def self.bin2dec(bin)
    return 0 unless bin =~ /^[01]+$/ # Reject strings with anything other than 1s and 0s.

    result = 0
    bin.chars.reverse.each_with_index do |bit, column|
      result += bit.to_i * (2 ** column)
    end

    result
  end
end
