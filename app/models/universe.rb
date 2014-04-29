class Universe < ActiveRecord::Base
	has_many :characters, through: :character_associations
	has_many :charcter_associations
end
