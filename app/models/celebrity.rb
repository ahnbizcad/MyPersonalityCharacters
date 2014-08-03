# == Schema Information
#
# Table name: celebrities
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

class Celebrity < ActiveRecord::Base
  acts_as_commentable
  acts_as_votable

#

	belongs_to :socionics_type

	has_many :characters, 
           through: :char_celeb_joins
	has_many :char_celeb_joins

	has_many :universes, 
           through: :characters
	
#

  accepts_nested_attributes_for :characters
  #:char_celeb_joins, reject_if: lambda { |a| a[:content].blank? }

#

	validates :name, presence: true

#

  if Rails.env.development?
    has_attached_file :image, 
      								:styles => { :medium => "200x", :thumb => "50x50>" }, 
      								:default_url => "_default_celebrity.jpg"
  else
    has_attached_file :image, 
        							:styles => { :medium => "200x", :thumb => "50x50>" }, 
        							:default_url => "_default_celebrity.jpg",
        							:storage => :dropbox,
        							:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
        							:path => "/celebrities/:filename_:id_:style"
  end

#

	def to_param
    "#{id}-#{name}"
  end

  # Turn all " " in names to "_" slug and table, but not for displaying for viewers

end
