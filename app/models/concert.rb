class Concert < ActiveRecord::Base



  validates_confirmation_of :places
  validates_presence_of :places, :on => :create
  validates_presence_of :concertname
  validates_uniqueness_of :concertname
  validates_presence_of :date


end
