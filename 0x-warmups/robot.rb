require 'securerandom'

class Robot
  attr_reader :instruction_count

  def initialize
    assign_name
    assign_mac

    @instruction_count = 0
    @creation_time = @boot_time = Time.now
  end

  def reset
    @instruction_count += 1
    @boot_time = Time.now
    assign_name
  end

  def name
    @instruction_count += 1
    @name
  end

  def mac
    @instruction_count += 1
    @mac
  end

  def timers
    # "8 seconds since last boot, 29 seconds since creation"
    "#{ (Time.now - @boot_time).to_i } seconds since last boot, #{ (Time.now - @creation_time).to_i } seconds since creation"
  end

  private
  def assign_name
    numbers = Random.rand 100...1000 # Ensure 3 digit number.
    letters = ('AA'..'ZZ').to_a.sample

    @name = letters + numbers.to_s
  end

  def assign_mac
    # 01:23:45:67:89:ab
    @mac = (0...6).map do
      SecureRandom.hex(1)
    end.join(':')
  end
end
