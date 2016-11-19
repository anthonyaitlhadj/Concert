class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      redirect_to root_url, :notice => "Inscription terminée !"
    else
      render json: @user.errors
    end
  end

  
  private
  def users_params
    params.require(:user).permit(:firstname, :lastname, :email, :pseudo,:password, :password_confirmation, :admin)
  end
end