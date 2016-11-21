class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(shows_params)
    if @show.save
      redirect_to root_url
    else
      render json: @show.errors
    end
  end

  private
  def shows_params
    params.require(:show).permit(:name, :date, :place, :adress, :price)
  end
end