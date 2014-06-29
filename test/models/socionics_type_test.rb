# == Schema Information
#
# Table name: socionics_types
#
#  id                  :integer          not null, primary key
#  im_1st              :string(255)
#  im_2nd              :string(255)
#  im_3rd              :string(255)
#  im_4th              :string(255)
#  im_5th              :string(255)
#  im_6th              :string(255)
#  im_7th              :string(255)
#  im_8th              :string(255)
#  quadra              :string(255)
#  club                :string(255)
#  temperament         :string(255)
#  communication_style :string(255)
#  romance_style       :string(255)
#  type_four_letter    :string(255)
#  type_three_letter   :string(255)
#  type_two_im         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  type_two_im_raw     :string(255)
#

require 'test_helper'

class SocionicsTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
