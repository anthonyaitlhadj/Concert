class Show < ActiveRecord::Base

  validates_confirmation_of :place
  validates_presence_of :place, :on => :create
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :date
  validates_presence_of :adress
  validates_presence_of :price
end