class User < ActiveRecord::Base
	validates_presence_of :name, :login, :password
	validates_length_of :name, :login, :password, minimum: 6

	has_secure_password
end
