class Celebrity < ActiveRecord::Base
  acts_as_votable
  
	belongs_to :socionics_type

	has_many :characters, through: :char_celeb_joins
	has_many :char_celeb_joins

	has_many :universes, through: :characters
	
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

  def self.tokens(query)
  	celebrities = where("name ILIKE ?", "%#{query}%")
  	if celebrities.empty?
  		[{ id:"<<<#{query}>>>", name: "New: \"#{query}\"" }]
  	else
  		celebrities
  	end
  end

  def self.ids_from_tokens(tokens)
		tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1).id }
		tokens.split(',')
	end

end
