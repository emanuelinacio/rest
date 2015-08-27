class User < ActiveRecord::Base
	validates_presence_of :name, :login, :pass
	validates_length_of :name, :login, :pass, minimum:10

end
