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
  has_many :songs
  has_many :artists, :through => :songs
  has_many :genres, :through => :songs
end
