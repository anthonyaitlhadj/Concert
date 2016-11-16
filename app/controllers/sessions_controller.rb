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
      redirect_back_or_to root_url
      p "Connexion: L'utilisateur s'est connecté !"
    else
      p @user.email, @user.password, @user.remember_me!
      flash.now.alert = "Email or password was invalid"
      render :new
    end
  end
  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
    p "Déconnexion: L'utilisateur s'est déconnecté !"
  end

  def users_params
    params.require(:user).permit(:email, :password, :remember_me)
  end
end