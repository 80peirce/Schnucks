class ChangeSomeFields < ActiveRecord::Migration
  def change
    change_column :pitchers, :innings_pitched, :decimal
    change_column :pitchers, :wins, :integer
    change_column :pitchers, :losses, :integer
    change_column :pitchers, :saves, :integer
    change_column :pitchers, :walks, :integer
    change_column :pitchers, :strikeouts, :integer
    change_column :pitchers, :earned_runs, :integer
    change_column :pitchers, :era, :decimal
    change_column :pitchers, :whip, :decimal
    change_column :pitchers, :hits, :integer
  end

  
end


# games           :string(255)
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