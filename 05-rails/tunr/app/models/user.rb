# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  email           :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  has_many :mixtapes
end
