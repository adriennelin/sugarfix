# == Schema Information
#
# Table name: businesses
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  img_url       :string
#  address       :string           not null
#  cross_streets :string
#  neighborhood  :string
#  lat           :float            not null
#  long          :float            not null
#  phone         :string
#  site_url      :string
#  menu_url      :string
#  category      :string           not null
#  rating        :float            not null
#  cost          :string           not null
#  hours         :text             not null
#  health_score  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Business < ApplicationRecord
  validates :name, :address, :lat, :lng, :category, :rating, :cost, :hours, presence: true

  has_many :reviews,
    primary_key: :id,
    foreign_key: :biz_id

  def self.in_bounds(bounds)
    self.where("lat < ?", bounds[:northEast][:lat])
      .where("lat > ?", bounds[:southWest][:lat])
      .where("lng > ?", bounds[:southWest][:lng])
      .where("lng < ?", bounds[:northEast][:lng])
  end
end
