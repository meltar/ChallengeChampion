class CreateChallengesUsersJoinTable < ActiveRecord::Migration
  def change
  	create_table :challenges_users, id: false do |t|
  		t.integer :user_id
  		t.integer :challenge_id
  	end
  end
end
