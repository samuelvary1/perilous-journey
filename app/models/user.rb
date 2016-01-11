class User < ActiveRecord::Base

	has_secure_password


	def self.authenticate(email, password)
		@user = User.where(email: params[:email]).first
		if @user && @user.password_hash == BCrypt::Engine.hash_secret(password, @user.password_salt)
			@user
		else
			nil
		end
	end

end
