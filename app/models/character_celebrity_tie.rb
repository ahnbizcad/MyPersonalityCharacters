class CharacterCelebrityTie < ActiveRecord::Base
	belongs_to :character
	belongs_to :celebrity
end
