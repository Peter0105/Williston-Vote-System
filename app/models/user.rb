class User < ApplicationRecord
	has_many :user_vote
	# EMAIL_REGEX = /\A([^@\s]+)@((williston+\.)+com)\z/i
	# validates_format_of :email, with: EMAIL_REGEX
  # Include default devise modules. Others available are:
  # devise :database_authenticatable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
