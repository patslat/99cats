class UsersController < ApplicationController
  def new
    render :new_user_form
  end

  def create
    user = User.new(params[:user])
    if user.save
      redirect_to cats_url
    else
      flash[:notice] = "Failed to create a user"
      redirect_to cats_url
    end
  end
end
