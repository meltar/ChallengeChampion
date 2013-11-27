class AddUserIdToChampion < ActiveRecord::Migration
  def change
    add_column :champions, :user_id, :integer
  end
end
