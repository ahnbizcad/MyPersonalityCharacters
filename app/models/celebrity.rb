class Celebrity < ActiveRecord::Base
  acts_as_commentable
  acts_as_votable

  #

	belongs_to :socionics_type

	has_many :characters, through: :char_celeb_joins
	has_many :char_celeb_joins

	has_many :universes, through: :characters
	
	#

  accepts_nested_attributes_for :char_celeb_joins

  #

	validates :name, presence: true

	#

  if Rails.env.development?
    has_attached_file :image, 
      								:styles => { :medium => "200x", :thumb => "100x100>" }, 
      								:default_url => "_default_celebrity.jpg"
  else
    has_attached_file :image, 
        							:styles => { :medium => "200x", :thumb => "100x100>" }, 
        							:default_url => "_default_celebrity.jpg",
        							:storage => :dropbox,
        							:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
        							:path => "/celebrities/:filename_:id_:style"
  end

  #

	def to_param
    "#{id}-#{name}"
  end

end
