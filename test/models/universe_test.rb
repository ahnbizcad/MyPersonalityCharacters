# == Schema Information
#
# Table name: universes
#
#  id                 :integer          not null, primary key
#  created_at         :datetime
#  updated_at         :datetime
#  name               :string(255)
#  medium             :string(255)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class UniverseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
