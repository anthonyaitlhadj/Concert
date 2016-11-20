class ReservationsController < ApplicationController

  def index
    @resas = Reservation.all
  end

  def new
    @resa = Reservation.new
  end

  def create
    @resa = Reservation.new(resa_params)
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

end
