# == Schema Information
#
# Table name: reviews
#
#  id            :integer          not null, primary key
#  body          :text             not null
#  rating        :integer          not null
#  biz_id        :integer          not null
#  reviewer_name :string           not null
#  reviewer_img  :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
