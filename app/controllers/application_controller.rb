class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  layout 'slate'

  private

  def confirm_logged_in
    unless session[:user_id]
      flash[:info] = "Please, log in."
      redirect_to(:controller => 'access', :action => 'login')
      return false # halt before action
    else
      return true
    end
  end

end
