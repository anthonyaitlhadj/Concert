class HomesController < ApplicationController
  def index
  	@shows = Show.all
  end
  def new

  end

  def create
    
  end
end