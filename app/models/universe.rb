class Universe < ActiveRecord::Base
  acts_as_commentable
  
	has_many :characters, through: :univ_char_joins
	has_many :univ_char_joins

	has_many :celebrities, through: :characters

	#

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

	#

	def to_param
		"#{id}-#{name}"
	end

end
