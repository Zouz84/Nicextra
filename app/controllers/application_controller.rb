class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


   def after_sign_in_path_for(devise_for)
  if devise_for.is_a?(User)
    user_dashboard_path 
  elsif devise_for.is_a?(Userpro)
    userpro_dashboard_path 
  else 
  	root_path
  end
end

end
