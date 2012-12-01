require 'csv'


#Hitter.create(:name => "Jake Vass", :team => "Bachelor Frogs", :position => "2B", :atbats => 300, :runs => 62, :hits => 100, :home_runs => 1, :rbi => 51, :stolen_bases => 12)

#all=CSV.read("db/origdata/batters.csv")

#CSV.foreach("db/origdata/hitters_schnuck1.csv", {:headers => true, :header_converters => :symbol}) do |row|
#  Hitter.create(:name => row[:name], :team => row[:mlb_team], :position => row[:position], :atbats => row[:ab],
#    :runs => row[:r], :hits => row[:h], :home_runs => row[:hr], :rbi => row[:rbi], :stolen_bases => row[:sb])
#end

CSV.foreach("db/origdata/pitchers_schnuck1.csv", {:headers => true, :header_converters => :symbol}) do |row|
  Pitcher.create(:name => row[:name], :team => row[:mlb_team], :games => row[:g], :games_started => row[:gs],
  :innings_pitched => row[:ip], :wins => row[:w], :losses => row[:l], :saves => row[:sv], :hits => row[:h],
  :walks => row[:bb], :strikeouts => row[:k], :earned_runs => row[:er], :era => row[:era], :whip => row[:whip])
end