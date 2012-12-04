# == Schema Information
#
# Table name: pitchers
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  team             :string(255)
#  games            :string(255)
#  games_started    :string(255)
#  innings_pitched  :float(255)
#  wins             :integer
#  losses           :integer
#  saves            :integer
#  walks            :integer
#  strikeouts       :integer
#  earned_runs      :integer
#  era              :float(255)
#  whip             :float(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  hits             :integer
#  schnucks_team_id :integer
#

require 'test_helper'

class PitcherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
