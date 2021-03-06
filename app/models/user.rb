class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :fist_name, :last_name, :company_name, :position_name
  # attr_accessible :title, :body

  validates :fist_name, presence: true
  validates :last_name, presence: true
  validates :company_name, presence: true

  has_many :statuses
  has_many :user_friendships
  has_many :friends, through: :user_friendships

  def full_name
  	fist_name + " " + last_name
  end

  def gravatar_url
    stripped_email = email.strip
    downcased_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(downcased_email)

    "http://gravatar.com/avatar/#{hash}"
  end
end
