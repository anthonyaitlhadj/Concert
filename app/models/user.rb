class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :comments, dependent: :destroy
  has_many :concerts
  has_many :reservations

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :password_confirmation
  validates_presence_of :pseudo
  validates_uniqueness_of :pseudo

end
