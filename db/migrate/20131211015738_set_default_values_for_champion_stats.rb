class SetDefaultValuesForChampionStats < ActiveRecord::Migration
  def self.up
		change_column :champions, :speed, :integer, default: 0
		change_column :champions, :intelligence, :integer, default: 0
		change_column :champions, :strength, :integer, default: 0
  end
end
