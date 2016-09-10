# == Schema Information
#
# Table name: duties
#
#  id              :integer          not null, primary key
#  class_room_id   :integer
#  start_date      :date
#  end_date        :date
#  parents_in_duty :integer
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Duty < ApplicationRecord
  belongs_to :user
  belongs_to :class_room
end
