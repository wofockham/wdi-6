# == Schema Information
#
# Table name: planets
#
#  id       :integer          primary key
#  name     :text
#  image    :text
#  orbit    :float
#  diameter :float
#  mass     :float
#  moons    :integer
#

class Planet < ActiveRecord::Base
end
