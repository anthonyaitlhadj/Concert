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
    p "nb place dispo avant resa: #{@show.place}" 
    @resa.show = Show.find(params[:show_id])
    @show.place -= @resa.nb_tickets

    if @resa.save #true ou false
        @show.save
        redirect_to root_url
        p "nb place dispo : #{@show.place}" 
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