class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # binding.pry
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password]) 
			# if we're here, the user exists and they typed in the right shit
			
			# mark the user, with their id
			session[:user_id] = @user.id
			# redirect them to their home page
			# give them some notice that they logged in
      # binding.pry
			redirect_to root_path, notice: "You have successfully logged in bub!"
    else

    	@user = User.new
      # binding.pry
    	# make an empty user so even if its nil we have the attributes to build our form with.
    	flash[:error] = "Bad Username or Password"
    	# it's typical if a form fails to render, so you're still preserving the data and it doesn't go blank for the user who's trying to fill it out. no more rage blackouts from making a mistake and wiping the whole form clean! you would completely lose that object if you tried to redirect.
    	render :new
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to log_in_path, notice: "Logged out!"
  end
end
