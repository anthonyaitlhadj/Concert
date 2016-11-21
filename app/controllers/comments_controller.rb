class CommentsController < ApplicationController
  before_action :find_concert
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new

  end

  def create
    @comment = Comment.new(params.require(:comment).permit(:contenu))
    @comment.user_id = current_user.id
    @comment.pseudo = current_user.pseudo
    if @comment.save
      redirect_to show_path(@show)
      p "Le commentaire est entré en base"
      p "Pseudo: #{@comment.pseudo}"
      p "User_id: #{@comment.user_id}"
      p "Contenu: #{@comment.contenu}"
    else
      render json: @comment.errors
    end
  end

  def destroy
    @comment.destroy
    redirect_to show_path(@show)
  end

  def show
    #@comment = Comment.find(params[:id])
  end
  private
  def find_concert
    @show = Show.find(params[:show_id])
  end
end