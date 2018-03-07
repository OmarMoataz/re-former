class User < ApplicationRecord
	validates :email, presence: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
	validates :username, presence: true
  validates_length_of :username, maximum: 4
	validates :password, presence: true
end
