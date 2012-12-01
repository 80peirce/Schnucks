class CreatePitchers < ActiveRecord::Migration
  def change
    create_table :pitchers do |t|
      t.string :name
      t.string :team
      t.string :games
      t.string :games_started
      t.string :innings_pitched
      t.string :wins
      t.string :losses
      t.string :saves
      t.string :walks
      t.string :strikeouts
      t.string :earned_runs
      t.string :era
      t.string :whip

      t.timestamps
    end
  end
#
end
