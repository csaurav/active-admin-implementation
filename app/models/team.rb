class Team < ActiveRecord::Base
  attr_accessible :name, :short_name

  validates_uniqueness_of :name
  validates_presence_of :name

  belongs_to :owner
  has_many :players

  attr_accessible :name, :owner_id	


end
