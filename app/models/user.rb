class User < ActiveRecord::Base
	has_many :orders
	has_secure_password
	validates :username,
		presence: true,
		uniqueness: true
	validates :password,
		length: {minimum:5}
	# validates :password_confirmation,
	# 	length: {minimum:5},
	# 	presence: true
end
