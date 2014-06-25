class CoachPlayersController < ApplicationController

	def create
		coach = current_coach
		coachplayer = CoachPlayer.create(coach_id: coach.id, player_id: params[:coach_player][:player_id])

		redirect_to coach_players_path
	end

	def index
		@coachplayer = CoachPlayer.where(current_coach == :coach_id)

		#@coachplayer = CoachPlayer.find(:coach_id)
	end
end

