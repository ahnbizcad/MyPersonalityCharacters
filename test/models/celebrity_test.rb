# == Schema Information
#
# Table name: celebrities
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

require 'test_helper'

class CelebrityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
