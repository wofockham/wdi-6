require 'pry'

require_relative './tenant.rb'
require_relative './apartment.rb'
require_relative './building.rb'

chris = Tenant.new('Chris Eccleston', 23, 'male')

apt = Apartment.new('25b', 100, 1, 15)

building = Building.new('123 Fake St', 'Neo-industrial', true, false, 1000)

# Globals to store our data
$buildings = []
$tenants = []

# Seed data
$buildings.push building
$buildings.first.apartments[apt.name] = apt
$buildings.first.apartments[apt.name].tenants << chris

def menu
  puts "1. List all apartments"
  puts "q. Quit"
end

def read_selection
  menu
  gets.chomp.downcase
end

menu_option = read_selection

until menu_option == 'q'
  case menu_option
  when '1'
    # List all apartments.
    $buildings.each do |b|
      b.apartments.each do |number, apartment|
        puts apartment
      end
    end

    menu_option = read_selection # Thanks Nick!
  end
end





