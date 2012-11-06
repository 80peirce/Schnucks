class AddRocksAndPapersAndScissorsesToUser < ActiveRecord::Migration
  def change
    add_column :users, :rocks, :integer
    add_column :users, :papers, :integer
    add_column :users, :scissorses, :integer
  end
end
