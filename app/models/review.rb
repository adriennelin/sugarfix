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

class Review < ApplicationRecord
  validates :body, :rating, :biz_id, :reviewer_name, presence: true

  belongs_to :business,
    primary_key: :id,
    foreign_key: :biz_id
end
