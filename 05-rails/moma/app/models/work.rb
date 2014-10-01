# == Schema Information
#
# Table name: works
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :string(255)
#  medium     :string(255)
#  style      :string(255)
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#

class Work < ActiveRecord::Base
  belongs_to :artist
end
