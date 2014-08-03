# == Schema Information
#
# Table name: universes
#
#  id                 :integer          not null, primary key
#  created_at         :datetime
#  updated_at         :datetime
#  name               :string(255)
#  medium             :string(255)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Universe < ActiveRecord::Base
  acts_as_commentable

  #

	has_many :characters, 
           through: :univ_char_joins
	has_many :univ_char_joins

	has_many :celebrities, 
           through: :characters

	#

  accepts_nested_attributes_for :characters
  #:univ_char_joins, reject_if: lambda { |a| a[:content].blank? }

  #

	if Rails.env.development?
    has_attached_file :image, 
      								:styles => { :medium => "200x", :thumb => "50x50>" }, 
      								:default_url => "_default_universe.jpg"
  else
    has_attached_file :image, 
        							:styles => { :medium => "200x", :thumb => "50x50>" }, 
        							:default_url => "_default_universe.jpg",
        							:storage => :dropbox,
        							:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
        							:path => "/universes/:filename_:id_:style"
  end

	#

	def to_param
		"#{id}-#{name}"
	end
  
  # Turn all " " in names to "_" slug and table, but not for displaying for viewers
  
end
