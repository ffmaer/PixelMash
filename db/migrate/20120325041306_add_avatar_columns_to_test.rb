class AddAvatarColumnsToTest < ActiveRecord::Migration
  def self.up
    change_table :tests do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :tests, :avatar
  end
end