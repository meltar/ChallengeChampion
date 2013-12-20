class ChallengesController < ApplicationController
	def create
		challenged_user = User.find(params[:challenged_user])
		challenge = complete_challenge challenged_user

		redirect_to challenge_path(challenge.id)
	end

	def show
		@challenge = Challenge.find(params[:id])
	end

	private

	def complete_challenge challenged_user
		winner = [current_user, challenged_user].sample

		current_user.challenges.build(description: Challenge.all_types.sample, winner_id: winner.id)
		current_user.save

		if winner == current_user
			current_user.update_attributes(wins: current_user.wins + 1)
			challenged_user.update_attributes(losses: challenged_user.losses + 1)
		else
			challenged_user.update_attributes(wins: challenged_user.wins + 1)
			current_user.update_attributes(losses: current_user.losses + 1)
		end

		current_user.challenges.last
	end
end
