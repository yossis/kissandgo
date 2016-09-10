# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  name       :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class School < ApplicationRecord
  has_many :class_rooms
end
