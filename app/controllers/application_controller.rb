class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?


	# Direct to page after logging in.
	#def after_sign_in_path_for(resource_or_scope)
	#	 current_user_path
	#end
  # Keep visitor on the same page after logging out.
  #def after_sign_out_path_for(resource_or_scope)
  #  request.referrer
  #end

  protected
	  # Whitelist devise model's attributes.
	  def configure_permitted_parameters
	  	devise_parameter_sanitizer.for(:sign_up) << :username
	  	devise_parameter_sanitizer.for(:account_update) << :username
	  end
end
