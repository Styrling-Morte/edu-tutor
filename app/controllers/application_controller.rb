class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def subject_list
    @subject =  Subject.all()
  end
  helper_method :subject_list

  def calender
    @full_clndr = Clndr.new(:full)
  end
  helper_method :calender
end
