class Character < ActiveRecord::Base
  has_many :universes, through: :character_associations

	validates :name, presence: true
	#validates_attachment_presence :image 
  if Rails.env.development?
    has_attached_file :image, 
      								:styles => { :medium => "200x", :thumb => "100x100>" }, 
      								:default_url => "_default_character.jpg"
  else
    has_attached_file :image, 
        							:styles => { :medium => "200x", :thumb => "100x100>" }, 
        							:default_url => "_default_character.jpg",
        							:storage => :dropbox,
        							:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
        							:path => "/characters/:filename_:id_:style"
  end

	
  def to_param
    "#{id}-#{name}"
  end
end
