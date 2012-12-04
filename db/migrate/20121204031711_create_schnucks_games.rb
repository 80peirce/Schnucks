class CreateSchnucksGames < ActiveRecord::Migration
  def change
    create_table :schnucks_games do |t|
      #t.integer :schnucks_team_id

      t.timestamps
    end
  end
end
