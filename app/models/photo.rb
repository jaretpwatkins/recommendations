# == Schema Information
#
# Table name: photos
#
#  id                :integer          not null, primary key
#  recommendation_id :integer
#  image_url         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Photo < ApplicationRecord

  belongs_to :recommendation
  
end
