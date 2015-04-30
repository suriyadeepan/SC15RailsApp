class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def require_admin
	unless current_admin && current_admin.email == "admin@fsftn.org"
		flash[:error] = "You are not the admin"
		redirect_to root_path
	end
  end
end
