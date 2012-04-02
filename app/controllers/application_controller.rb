class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :home_link
  
  private
  
  # Overwriting the sign_in redirect path method
  def after_sign_in_path_for(resource_or_scope)
    if user_signed_in? && current_user.admin?
      admin_props_path
    else
      props_path
    end
  end

   # Overwriting the sign_out redirect path method
   def after_sign_out_path_for(resource_or_scope)
     root_path
   end
   
   def home_link
     user_signed_in? ? props_path : root_path
   end
end
