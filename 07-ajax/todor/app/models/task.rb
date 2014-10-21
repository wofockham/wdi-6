# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  description :text
#  completed   :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Task < ActiveRecord::Base
end
