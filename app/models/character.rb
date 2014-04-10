class Character < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "x300", :thumb => "100x100#>" }, :default_url => "default_character.png"
end
