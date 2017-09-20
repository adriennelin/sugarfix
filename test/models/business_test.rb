# == Schema Information
#
# Table name: businesses
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  img_url       :string
#  address       :string           not null
#  cross_streets :string
#  lat           :float            not null
#  long          :float            not null
#  phone         :string
#  site_url      :string
#  category      :string           not null
#  cost          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class BusinessTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
