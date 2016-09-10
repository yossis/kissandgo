# == Schema Information
#
# Table name: class_rooms
#
#  id         :integer          not null, primary key
#  school_id  :integer
#  name       :string
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ClassRoom < ApplicationRecord
  has_many :pupils
  has_many :duties
  belongs_to :school
end
