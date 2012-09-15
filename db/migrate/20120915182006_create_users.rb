class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :wins
      t.integer :losses
      t.decimal :total_points, :precision => 5, :scale => 1

      t.timestamps
    end
  end
end
