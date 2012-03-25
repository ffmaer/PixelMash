class AddCompletedToGame < ActiveRecord::Migration
  def self.up
    add_column :games, :completed, :boolean
  end

  def self.down
    remove_column :games, :completed
  end
end
