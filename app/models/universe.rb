class Universe < ActiveRecord::Base

	has_many :characters, through: :character_universe_ties
	has_many :universe_character_ties

	has_many :celebrities, through: :characters

	if Rails.env.development?
    has_attached_file :image, 
      								:styles => { :medium => "200x", :thumb => "100x100>" }, 
      								:default_url => "_default_universe.jpg"
  else
    has_attached_file :image, 
        							:styles => { :medium => "200x", :thumb => "100x100>" }, 
        							:default_url => "_default_universe.jpg",
        							:storage => :dropbox,
        							:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
        							:path => "/universes/:filename_:id_:style"
  end

end
