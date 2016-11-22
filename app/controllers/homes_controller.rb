class HomesController < ApplicationController
  def index
  	@shows = Show.all.limit(5)
  end
  def new

  end

  def create
    
  end
end