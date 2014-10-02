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
end
