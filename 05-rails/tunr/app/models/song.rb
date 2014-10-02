# == Schema Information
#
# Table name: songs
#
#  id        :integer          not null, primary key
#  name      :string(255)
#  image     :text
#  filename  :string(255)
#  album_id  :integer
#  artist_id :integer
#

class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :mixtapes
end
