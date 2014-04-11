class Character < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, 
		:default_url => "default_character.png", 
		:storage => :dropbox, 
		:dropbox_credentials => Rails.root.join("config/dropbox.yml")

	validates :name, presence: true
	validates_attachment_presence :image 
end
