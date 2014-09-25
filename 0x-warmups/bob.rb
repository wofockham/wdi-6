class Teenager
  attr_accessor :name
  def initialize(name)
    puts "My name is #{ name }, how you going dude?"
  end

  def converse
    message = gets.chomp.strip
    if rude?(message)
      puts 'Fine. Be that way!'
    elsif question?(message)
      puts 'Sure.'
    elsif all_caps?(message)
      puts 'Woah, chill out!'
    elsif leet_request?(message)
      puts leet(message)
    else
      puts 'Whatever.'
    end
  end

  private
  def question?(m)
    m.end_with? '?'
  end

  def all_caps?(m)
    m == m.upcase
  end

  def rude?(m)
    m.empty?
  end

  def leet_request?(m)
    m[0..4] == 'Bro, '
  end

  def leet(m)
    m.sub!('Bro, ', '')
    m.tr('aeio', '4310')
  end
end

bob = Teenager.new('Bob McGee')

require 'pry'
binding.pry

loop do
  bob.converse
end

