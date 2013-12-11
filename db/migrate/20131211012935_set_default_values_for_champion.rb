class SetDefaultValuesForChampion < ActiveRecord::Migration
  def self.up
		change_column :users, :wins, :integer, :default => 0
		change_column :users, :losses, :integer, :default => 0
  end
end
