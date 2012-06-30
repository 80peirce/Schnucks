class Hitter < ActiveRecord::Base
  attr_accessible :atbats, :batting_average, :hits, :home_runs, :name, :position, :rbi, :runs, :stolen_bases, :team
end
