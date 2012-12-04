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

require 'test_helper'

class SchnucksTeamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
