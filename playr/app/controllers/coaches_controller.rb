class CoachesController < ApplicationController
before_action :authenticate_coach!

	def index
	   @coach = current_coach
	end

	def show
		@coach = Coach.find(params[:id])
	end

	def edit
		@coach = Coach.find(params[:id])
	end

	def update
  	@coach = Coach.find(params[:id])
  	@coach.update(coach_params)

  	if @coach.save
  		redirect_to @coach
    else
    	redirect_to @coach, notice: 'Your profile was NOT updated. Please try again.'
  	end
  end


  private
	  def coach_params
	    params.require(:coach).permit(:name, :title, :school, :email, :id)
	  end
end
