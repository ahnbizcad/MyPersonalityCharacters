class Character < ActiveRecord::Base

  if Rails.env.development?
    has_attached_file :image, 
      :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
  else
    has_attached_file :image, 
        :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg",
        :storage => :dropbox,
        :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
        :path => "/characters/:id_:filename"
  end

	validates :name, presence: true
	validates_attachment_presence :image 

end
