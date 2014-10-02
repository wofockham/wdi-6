# == Schema Information
#
# Table name: genres
#
#  id   :integer          not null, primary key
#  name :string(255)
#

class Genre < ActiveRecord::Base
  has_and_belongs_to_many :songs
end
