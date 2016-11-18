class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    @user = User.new
  end

  def create
    #@user = User.new(params.require(:user).permit(:firstname, :lastname))
    #p "Email: #{@user.email}"
    #p "Password: #{@user.password}"
    #p "Remember_me: #{@user.remember_me!}"
    @comment = Comment.new(comments_params)
    #@comment.c_firstname = @user.firstname
    #@comment.c_lastname = @user.lastname
    if @comment.save
      redirect_to comments_path
    else
      render json: @comment.errors
    end
  end

  private
  def comments_params
    params.require(:comment).permit(:contenu, :c_firstname, :c_lastname, :users)
  end
end