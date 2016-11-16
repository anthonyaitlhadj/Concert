class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(users_params)
    p "Email: #{@user.email}"
    p "Password: #{@user.password}"
    p "Remember_me: #{@user.remember_me!}"
    user = login(@user.email, @user.password, @user.remember_me!)
    if user
      redirect_back_or_to root_url, :notice => "#{params[:firstname]} #{params[:lastname]} s'est connecté !"
    else
      p @user.email, @user.password, @user.remember_me!
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end
  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end

  def users_params
    params.require(:user).permit(:email, :password, :remember_me)
  end
end