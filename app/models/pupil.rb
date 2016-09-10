# == Schema Information
#
# Table name: pupils
#
#  id                  :integer          not null, primary key
#  full_name           :string
#  father_name         :string
#  father_phone_number :string
#  mother_name         :string
#  mother_phone_number :string
#  class_room_id       :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Pupil < ApplicationRecord
  belongs_to :class_room
end
