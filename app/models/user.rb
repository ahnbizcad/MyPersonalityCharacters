class User < ActiveRecord::Base
  acts_as_commentable
  acts_as_votable
  acts_as_voter

#

	belongs_to :socionics_type

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  #

  validates :username, presence: true

  def to_param
    "#{id}-#{username}"
  end

end
