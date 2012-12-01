class SchnucksTeam < ActiveRecord::Base
  attr_accessible :draft_slot, :game_score, :owner
  has_many :hitters
  has_many :pitchers
  
end
