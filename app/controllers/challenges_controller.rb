class ChallengesController < ApplicationController
	def create
		challenged_user = User.find(params[:challenged_user])
		challenge = complete_challenge challenged_user, current_user

		redirect_to challenge_path(challenge.id)
	end

	def show
		@challenge = Challenge.find(params[:id])
		@winner = User.find(@challenge.winner_id)
	end

	private

	def complete_challenge challenged, challenger
		winner, loser = [challenged, challenger].shuffle
		challenge = Challenge.create(description: Challenge.all_types.sample, winner_id: winner.id)

		winner.challenges << challenge
		loser.challenges << challenge
		update_wins_losses winner, loser

		challenge
	end

	def update_wins_losses winner, loser
		winner.update_attributes(wins: winner.wins + 1)
		loser.update_attributes(losses: loser.losses + 1)
	end
end
