# == Schema Information
#
# Table name: users
#
#  id    :integer          not null, primary key
#  name  :string(255)
#  email :string(255)
#

class User < ActiveRecord::Base
end
