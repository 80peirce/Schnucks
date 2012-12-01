# == Schema Information
#
# Table name: hitters
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  team            :string(255)
#  position        :string(255)
#  atbats          :integer
#  runs            :integer
#  hits            :integer
#  batting_average :float
#  home_runs       :integer
#  rbi             :integer
#  stolen_bases    :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Hitter < ActiveRecord::Base
  attr_accessible :atbats, :batting_average, :hits, :home_runs, :name, :position, :rbi, :runs, :stolen_bases, :team, :schnucks_team_id
  belongs_to :schnucks_team
end
