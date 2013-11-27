class RemoveChampionColumnFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :champion
  end
end
