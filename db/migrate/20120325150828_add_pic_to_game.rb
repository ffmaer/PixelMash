class AddPicToGame < ActiveRecord::Migration
  def self.up
    add_column :games, :pic, :string
  end

  def self.down
    remove_column :games, :pic
  end
end
