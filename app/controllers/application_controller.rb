class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
		# we want this method to be available in views as well, so we can use a method called helper method.
		# it's a controller method that gets declared as a helper.
  end

  def logged_in?
  	!!current_user
  end

  def authenticate
    if session[:user_id].nil?
      
    redirect_to :controller => "sessions", :action => "create"
    flash[:notice] = "You must log in to play the game!"
    end
  end
end
