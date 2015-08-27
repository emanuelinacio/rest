class User < ActiveRecord::Base
	validates :name, presence: true
	validates :login, presence: true
	validates :pass, presence: true

end
