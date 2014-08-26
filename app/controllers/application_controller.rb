class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :is_admin?

  before_filter :set_admin

  def set_admin
    if params[:admin] || cookies[:admin]
      cookies[:admin] = { :value => "yup", :expires => 1.year.from_now }
    end
  end

  def is_admin?
    cookies[:admin]
  end

end
