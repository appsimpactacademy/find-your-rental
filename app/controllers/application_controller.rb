class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
    if resource.role == 'admin'
      admin_dashboard_path
    elsif resource.role == 'owner'
      owner_dashboard_path
    else
      root_path
    end
  end
end
