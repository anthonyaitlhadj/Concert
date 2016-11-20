class ConcertController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create
    p params
    @concert = Concert.new(concerts_params)

    if @concert.save
      redirect_to root_url, :notice => "insertion terminée !"
    else
      render json: @concert.errors
    end
  end


  private
  def concerts_params
    params.require(:concert).permit(:concertname, :date, :places)
  end

end