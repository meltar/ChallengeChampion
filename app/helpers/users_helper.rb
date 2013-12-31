module UsersHelper
	def winner_name(users, winner_id)
		if current_user.id == winner_id
			"YOU"
		else
			winner = users.find(winner_id)
			winner.name
		end
	end

	def loser_name(users, loser_id)
		if current_user.id == loser_id
			"YOU"
		else
			loser = users.find(loser_id)
			loser.name
		end
	end
end
