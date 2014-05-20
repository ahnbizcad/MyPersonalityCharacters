class Character < ActiveRecord::Base
  acts_as_votable

  belongs_to :socionics_type

  has_many :universes, through: :univ_char_joins
  has_many :univ_char_joins

  has_many :celebrities, through: :char_celeb_joins
  has_many :char_celeb_joins

  #

  attr_reader :universe_tokens, :celebrity_tokens

  def universe_tokens=(tokens)
    self.universe_ids = Universe.ids_from_tokens(tokens)
  end

  def celebrity_tokens=(tokens)
    self.celebrity_ids = Celebrity.ids_from_tokens(tokens)
  end

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

  def to_param
    "#{id}-#{name}"
  end

end
