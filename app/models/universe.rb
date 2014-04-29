class Universe < ActiveRecord::Base
	has_many :characters, through: :character_associations
end
