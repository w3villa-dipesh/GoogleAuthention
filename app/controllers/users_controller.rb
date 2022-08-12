class UsersController < ApplicationController

  def new # render a Signup form
    if !logged_in?
      @user = User.new
    else
      redirect_to root_path
    end
  end

  def create # processing Signup form
    user = User.new(user_params)
    if user.save
      #log user in
      session[:user_id] = user.id #log user in
      redirect_to root_path
    else
      #show some errors
      #make them try again
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
