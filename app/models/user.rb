class User < ActiveRecord::Base
	attr_accessor :password
	validates_confirmation_of :password
	validates_presence_of :password, :on => :create

	validates :email, presence: true,
										uniqueness: true, 
										case_sensitive: false


	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end

end
