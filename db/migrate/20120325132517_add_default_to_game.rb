


class AddDefaultToGame < ActiveRecord::Migration
  def self.up
     change_column :games, :vote1, :integer, :default => 0
     change_column :games, :vote2, :integer, :default => 0
  end
end