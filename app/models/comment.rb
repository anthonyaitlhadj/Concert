class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :show

  validates_presence_of :contenu
  validates_presence_of :show_id
end