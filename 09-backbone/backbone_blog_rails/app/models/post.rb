# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  slug       :string(255)
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
end
