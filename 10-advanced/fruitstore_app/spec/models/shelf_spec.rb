# == Schema Information
#
# Table name: shelves
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Shelf, :type => :model do
  it { should have_many :fruits }
end
