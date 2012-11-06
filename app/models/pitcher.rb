# == Schema Information
#
# Table name: pitchers
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  team            :string(255)
#  games           :string(255)
#  games_started   :string(255)
#  innings_pitched :string(255)
#  wins            :string(255)
#  losses          :string(255)
#  saves           :string(255)
#  walks           :string(255)
#  strikeouts      :string(255)
#  earned_runs     :string(255)
#  era             :string(255)
#  whip            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  hits            :string(255)
#

class Pitcher < ActiveRecord::Base
  attr_accessible :earned_runs, :era, :games, :games_started, :hits, :innings_pitched, :losses, :name, :saves, :strikeouts, :team, :walks, :whip, :wins

end
