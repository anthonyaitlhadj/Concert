class ReservationsController < ApplicationController

  before_action :find_concert
  
  def index
    @resas = Reservation.all
  end


  def new
    @resa = Reservation.new
  end


  def create
    @resa = Reservation.new(resa_params)
    @resa.show = Show.find(params[:show_id])
    if @resa.save #true ou false
        redirect_to root_url
    else
      render json: @resa.errors
    end
  end
  
  private
  def resa_params
    params.require(:reservation).permit(:firstname, :lastname, :email, :nb_tickets)
  end

  private
  def find_concert
    @show = Show.find(params[:show_id])
  end

end