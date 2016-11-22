class Show < ActiveRecord::Base
	has_many :comments
	has_many :reservations, dependent: :destroy
  validates_confirmation_of :place
  validates_presence_of :place, :on => :create
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :date
  validates_presence_of :adress
  validates_presence_of :price

  def self.search(search)
  	if search
  		where(["name LIKE ?", search])
  	else
  		all
  	end
  end

end