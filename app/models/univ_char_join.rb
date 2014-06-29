# == Schema Information
#
# Table name: univ_char_joins
#
#  universe_id  :integer
#  character_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class UnivCharJoin < ActiveRecord::Base
	belongs_to :universe
	belongs_to :character

  #

end
