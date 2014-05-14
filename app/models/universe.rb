class Universe < ActiveRecord::Base
	has_many :characters, through: :character_universe_ties
	has_many :character_universe_ties
end
