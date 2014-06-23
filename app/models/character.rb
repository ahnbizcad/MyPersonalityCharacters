class Character < ActiveRecord::Base
  acts_as_commentable
  acts_as_votable

  #

  belongs_to :socionics_type

  has_many :universes, through: :univ_char_joins
  has_many :univ_char_joins

  has_many :celebrities, through: :char_celeb_joins
  has_many :char_celeb_joins

  #
  
  accepts_nested_attributes_for :univ_char_joins
  accepts_nested_attributes_for :char_celeb_joins

  #

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

	#

  def universe_ids

  end

  def celebrity_ids

  end

  #

  # needs to be public, but not an action. extend votes model?
  # can this method be accessed from views?
  def votable_name
    model = Character.new 
    @votable_name = model.class.name.downcase
  end

  def to_param
    "#{id}-#{name}"
  end

end
