class Player < ActiveRecord::Base
  # attr_accessible :title, :body

  validates_presence_of :name, :email
  validates_uniqueness_of :email
  
  belongs_to :team

  attr_accessible :name, :email, :goc, :team_id, :is_foreign_player
end
