class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username,:first_name, :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username,:first_name, :last_name] )
    end




  
  private
  
    # Confirms a logged-in user.
    def logged_in_user
      unless current_user
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
  
     # Checks if user is already logged-in
    def already_logged_in?
      if current_user
        redirect_to root_path
      end
    end
  
    # Verifies user is owner of resource
    def authorized?(resource)
      if resource.class == Event
        redirect_to root_path unless current_user && current_user.id == resource.user_id
      elsif resource.class == User
        redirect_to root_path unless current_user && current_user.id == resource.id
      end
    end
  end
