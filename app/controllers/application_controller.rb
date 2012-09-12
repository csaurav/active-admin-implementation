class ApplicationController < ActionController::Base
  protect_from_forgery


  # define this method in applicaton_controller.rb
  def check_user_role
  	redirect_to root_path unless current_user.roles.first.name == "admin"
  end

  
end
