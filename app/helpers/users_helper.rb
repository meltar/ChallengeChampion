module UsersHelper
	def winner_name(users, winner_id)
		if current_user.id == winner_id
			"YOU"
		else
			winner = User.all.find(winner_id)
			if winner.blank?
				"UNKNOWN"
			else
				winner.name
			end
		end
	end

	def loser_name(users, loser_id)
		if current_user.id == loser_id
			"YOU"
		else
			loser = User.all.find(loser_id)
			if loser.blank?
				"UNKNOWN"
			else
				loser.name
			end
		end
	end
end
