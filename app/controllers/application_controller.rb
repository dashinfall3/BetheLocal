class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
  	#if advertiser do this one, if developer do a different one
    if user_signed_in?
    	user_path(current_user)
    else 
    	business_path(current_business)
    end
  end

end
