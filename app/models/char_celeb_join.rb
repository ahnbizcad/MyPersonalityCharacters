# == Schema Information
#
# Table name: char_celeb_joins
#
#  celebrity_id :integer
#  character_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class CharCelebJoin < ActiveRecord::Base
	belongs_to :character
	belongs_to :celebrity

  #

  accepts_nested_attributes_for :celebrity
  accepts_nested_attributes_for :character

  #

  
  
end
