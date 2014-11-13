# == Schema Information
#
# Table name: fruits
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#  type       :string(255)
#

class Fruit < ActiveRecord::Base
  belongs_to :shelf

  validates :name, :presence => true
end
