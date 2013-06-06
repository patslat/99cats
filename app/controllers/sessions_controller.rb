class SessionsController < ApplicationController
  def new
    render :login
  end

  def create
    user = User.find_by_username(params[:user][:username])
    if (not user.nil?) && user.verify_password?(params[:user][:password])
      session[:token] = user.set_token
      redirect_to cats_url
    else
      flash[:notice] = "Invalid login!"
      redirect_to cats_url
    end
  end
end
