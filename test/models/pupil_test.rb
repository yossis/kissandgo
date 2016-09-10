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

require 'test_helper'

class PupilTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
