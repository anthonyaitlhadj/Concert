class User < ApplicationRecord
  authenticates_with_sorcery!

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :password_confirmation
end
