# == Schema Information
#
# Table name: schnucks_games
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SchnucksGame < ActiveRecord::Base
  has_many :schnucks_teams
end
