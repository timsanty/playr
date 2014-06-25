class PlayersController < ApplicationController
	before_action :authenticate_player!, except: [:index]
	#before_action :authenticate_coach!, only: [:index]

	def index
		@players = Player.all
		@coachplayers = CoachPlayer.new
	end

	def show
		@player = Player.find(params[:id])
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
  	@player = Player.find(params[:id])
  	@player.update(player_params)

  	if @player.save
  	redirect_to @player
    else
    redirect_to @player, notice: 'Your profile was NOT updated. Please try again.'
  	end
  end


  private
	  def player_params
	    params.require(:player).permit(:name, :email, :height, :weight, :block_jump, :approach_jump, :hand, :gpa, :grad_year)
	  end
end
