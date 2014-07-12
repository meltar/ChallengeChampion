class ChallengesController < ApplicationController
	respond_to :html, :json

	def create
		challenged_user = User.find(params[:challenged_user])
		challenge = complete_challenge challenged_user, current_user

		redirect_to challenge_path(challenge.id)
	end

	def show
		@challenge = Challenge.find(params[:id])
		@winner = User.find(@challenge.winner_id)
		@loser = User.find(@challenge.loser_id)
		respond_with([@challenge, @winner, @loser])
	end

	private

	def complete_challenge challenged, challenger
		winner, loser = [challenged, challenger].shuffle
		challenge = Challenge.create(description: Challenge.all_types.sample,
																 winner_id: winner.id,
																 loser_id: loser.id,
																)

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
