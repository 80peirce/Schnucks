# == Schema Information
#
# Table name: hitters
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  team             :string(255)
#  position         :string(255)
#  atbats           :integer
#  runs             :integer
#  hits             :integer
#  batting_average  :float
#  home_runs        :integer
#  rbi              :integer
#  stolen_bases     :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  schnucks_team_id :integer
#

require 'test_helper'

class HitterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
