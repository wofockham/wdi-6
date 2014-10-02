# == Schema Information
#
# Table name: mixtapes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Mixtape < ActiveRecord::Base
end
