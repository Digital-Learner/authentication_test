class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Welcome #{@user.name}!"
      redirect_to root_url
    else
      flash[:error] = "Something went wrong, please review your submission"
      render :new
    end
  end
end
