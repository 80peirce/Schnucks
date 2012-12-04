# == Schema Information
#
# Table name: schnucks_teams
#
#  id               :integer          not null, primary key
#  draft_slot       :integer
#  owner            :string(255)
#  game_score       :float
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  schnucks_game_id :integer
#

class SchnucksTeam < ActiveRecord::Base
  attr_accessible :draft_slot, :game_score, :owner, :schnucks_game_id
  has_many :hitters
  has_many :pitchers
  belongs_to :schnucks_game
end
