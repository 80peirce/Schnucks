class AddSchnucksTeamIdToPitchers < ActiveRecord::Migration
  def change
    add_column :pitchers, :schnucks_team_id, :integer
  end
end
