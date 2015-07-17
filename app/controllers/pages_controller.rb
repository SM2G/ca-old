class PagesController < ApplicationController

  def contact
  end

  def features
  end

  def home
  end

  def pricing
  end

  def create
    @AdminUser = AdminUser.new(user_params)
    if @AdminUser.save
      # Handle a successful save.
      log_in @AdminUser
      flash[:success] = "Welcome to the Sample App!"
      redirect_to(:action => 'admin')
    else
      render 'new'
    end
  end

## Secure parameter passing mode
## ==============================
private
  def user_params
    params.require(:AdminUser).permit(:username, :email, :password, :password_confirmation)
  end

end
