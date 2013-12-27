class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: 'Thank you for registering. You can now login using your username and password.'
    else
      render :new
    end
  end

  private

  def user_params
    params.required(:user).permit(:email, :username, :password, :password_confirmation)
  end
end
