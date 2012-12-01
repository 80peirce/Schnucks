class AddSchucksTeamIdToHitters < ActiveRecord::Migration
  def change
    add_column :hitters, :schnucks_team_id, :integer
  end
end
