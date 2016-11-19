class CommentsController < ApplicationController
  #before_action :find_concert
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
      redirect_to comments_path
      p "Le commentaire est entré en base"
      p "Pseudo: #{@comment.pseudo}"
      p "User_id: #{@comment.user_id}"
      p "Contenu: #{@comment.contenu}"
    else
      render json: @comment.errors
    end
  end

  private
  def find_concert
    #@concert = Concert.find(params[:concert_id])
  end
end