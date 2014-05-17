class Character < ActiveRecord::Base
  acts_as_votable

  belongs_to :socionics_type

  has_many :universes, through: :character_universe_ties
  has_many :universe_character_ties

  has_many :celebrities, through: :character_celebrity_ties
  has_many :character_celebrity_ties

	validates :name, presence: true
	
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
