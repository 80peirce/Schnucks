class Pitcher < ActiveRecord::Base
  attr_accessible :earned_runs, :era, :games, :games_started, :hits, :innings_pitched, :losses, :name, :saves, :strikeouts, :team, :walks, :whip, :wins

end
