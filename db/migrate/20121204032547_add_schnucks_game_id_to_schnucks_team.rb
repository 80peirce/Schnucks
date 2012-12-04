class AddSchnucksGameIdToSchnucksTeam < ActiveRecord::Migration
  def change
    add_column :schnucks_teams, :schnucks_game_id, :integer  
  end
end
