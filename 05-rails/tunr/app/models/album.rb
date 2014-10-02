# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cover      :text
#  created_at :datetime
#  updated_at :datetime
#

class Album < ActiveRecord::Base
end
