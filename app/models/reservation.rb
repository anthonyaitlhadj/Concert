class Reservation < ApplicationRecord

  belongs_to :user
  belongs_to :show

  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :nb_tickets
end