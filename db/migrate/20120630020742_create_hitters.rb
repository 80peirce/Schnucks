class CreateHitters < ActiveRecord::Migration
  def change
    create_table :hitters do |t|
      t.string :name
      t.string :team
      t.string :position
      t.integer :atbats
      t.integer :runs
      t.integer :hits
      t.float :batting_average
      t.integer :home_runs
      t.integer :rbi
      t.integer :stolen_bases

      t.timestamps
    end
  end
end
