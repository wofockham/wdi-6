require 'pry'

class Allergies
  ALLERGENS = {
    1 => 'eggs',
    2 => 'peanuts',
    4 => 'shellfish',
    8 => 'strawberries',
    16 => 'tomatoes',
    32 => 'chocolate',
    64 => 'pollen',
    128 => 'cats'
  }

  def initialize(flags)
    @flags = flags
  end

  def allergic_to?(allergen)
    list.include? allergen
  end

  def list
    allergies = []
    ALLERGENS.each do |code, allergen|
      if (@flags & code) > 0
        allergies << allergen
      end
    end
    allergies
  end
end

binding.pry

# allergies = Allergies.new(34)

# allergies.allergic_to?('chocolate')
# => true
# allergies.allergic_to?('cats')
# => false
# allergies.list
# => ['peanuts', 'chocolate']