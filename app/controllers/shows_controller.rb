class ShowsController < ApplicationController
  
  def index
    @shows = Show.search(params[:search])
  end

  def new
    @show = Show.new
  end

  def show
    @show = Show.find(params[:id])
  end

  def destroy

    @show = Show.find(params[:id])
    @show.destroy

    redirect_to root_url

  def create
    @show = Show.new(shows_params)
    if @show.save
      redirect_to root_url
    else
      render json: @show.errors
    end

  end
  

  def edit
    @show = Show.find(params[:id])
  end
  def update
    @show = Show.find(params[:id])
    if @show.update(shows_params)
      redirect_to root_url
    else
      render json: @show.errors
    end
  end


  def create
    @show = Show.new(shows_params)
    if @show.save
      redirect_to root_url
    else
      render json: @show.errors
    end
  end

  def show
    @show = Show.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(show_id: @show).order("created_at DESC")
  end


  def destroy

    @show = Show.find(params[:id])
    @show.destroy

    redirect_to shows_path
  end

  
  private
  def shows_params
    params.require(:show).permit(:name, :date, :place, :adress, :price)
  end
end