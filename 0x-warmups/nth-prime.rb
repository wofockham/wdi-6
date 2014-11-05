require 'prime'

class Prime
  def self.nth(n)
    Prime.first(n).last
  end
end
