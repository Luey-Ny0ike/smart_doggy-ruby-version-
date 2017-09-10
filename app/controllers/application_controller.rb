class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.new_user_session_path, alert: exception.message
  end

  def after_sign_out_path_for(_user)
    root_path
  end

  def after_sign_in_path_for(_user)
    if _user.superadmin_role
      rails_admin_path
    else
    testimonials_path
    end
  end

  def after_sign_up_path_for(_user)
    testimonials_path
  end
end
