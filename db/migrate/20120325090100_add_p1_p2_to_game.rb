class AddP1P2ToGame < ActiveRecord::Migration
  def self.up
    change_table :games do |t|
      t.has_attached_file :p1
      t.has_attached_file :p2

    end
  end

  def self.down
    drop_attached_file :games, :p1
    drop_attached_file :games, :p2

  end
end