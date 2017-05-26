# == Schema Information
#
# Table name: recommendations
#
#  id           :integer          not null, primary key
#  address      :string
#  name         :string
#  neighborhood :string
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recommendation < ApplicationRecord

  belongs_to :user
has_many :photos, :dependent => :destroy

end
