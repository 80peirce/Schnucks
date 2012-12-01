class CreateSchnucksTeams < ActiveRecord::Migration
  def change
    create_table :schnucks_teams do |t|
      t.integer :draft_slot
      t.string :owner
      t.float :game_score

      t.timestamps
    end
  end
end
