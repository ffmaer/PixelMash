class AddToGame < ActiveRecord::Migration
  def self.up

    add_column :games, :player1, :string
    add_column :games, :player2, :string

    add_column :games, :draw1, :string
    add_column :games, :draw2, :string

    add_column :games, :vote1, :integer
    add_column :games, :vote2, :integer

  end

  def self.down

    remove_column :games, :player1
    remove_column :games, :player2

    remove_column :games, :draw1
    remove_column :games, :draw2

    remove_column :games, :vote1
    remove_column :games, :vote2

  end
end
