class AddRpsWinsToUser < ActiveRecord::Migration
  def change
    add_column :users, :rps_wins, :integer
  end
end
