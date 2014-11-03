class Calculator
  def ask(question)
    parts = question.split(/\s+/)
    index = nil
    parts.each_with_index do |word, i|
      if word.match /\d+/
        index = i
        break
      end
    end

    if index.nil?
      raise "No numbers found"
    end

    operand1 = parts[index].to_f
    operator = parts[index + 1].downcase
    operand2 = parts[index + 2].to_f

    result = case operator
    when "plus" then operand1 + operand2
    when "minus" then operand1 - operand2
    when "times" then operand1 * operand2
    when "over" then operand1 / operand2
    end

    result
  end
end

require 'pry'
binding.pry
