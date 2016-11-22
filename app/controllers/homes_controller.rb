class HomesController < ApplicationController
  def index
  	@shows = Show.all.limit(6)
  end
  def new

  end

  def create
    
  end
end