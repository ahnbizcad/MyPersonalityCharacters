class Celebrity < ActiveRecord::Base
	belongs_to :socionics_type

	has_many :character, through: :character_celebrity_ties
	has_many :character_celebrity_ties
	
end
