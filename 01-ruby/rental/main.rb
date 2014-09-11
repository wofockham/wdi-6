require 'pry'

require_relative './tenant.rb'
require_relative './apartment.rb'
require_relative './building.rb'

chris = Tenant.new('Chris Eccleston', 23, 'male')
puts chris

apt = Apartment.new('25b', 100, 1, 15)
puts apt

building = Building.new('123 Fake St', 'Neo-industrial', true, false, 1000)
puts building

binding.pry