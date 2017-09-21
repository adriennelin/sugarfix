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
#  rating        :float            not null
#  cost          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Business < ApplicationRecord
  validates :name, :address, :lat, :long, :category, :rating, :cost, presence: true


end
