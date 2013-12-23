class AddLoserIdToChallenge < ActiveRecord::Migration
  def change
    add_column :challenges, :loser_id, :integer
  end
end
