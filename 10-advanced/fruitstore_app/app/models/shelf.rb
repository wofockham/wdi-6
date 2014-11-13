# == Schema Information
#
# Table name: shelves
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Shelf < ActiveRecord::Base
  has_many :fruits
end
