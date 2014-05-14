class CharacterUniverseTie < ActiveRecord::Base
	belongs_to :universe
	belongs_to :character
end
