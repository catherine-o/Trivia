class TeamsController < ApplicationController

    def index
        @teams = Team.all 
    end

    def show
        @team = Team.find(params[:id])
    end

    def create 
        @team = Team.create(team_params)
        # if @team.save
        # byebug
            redirect_to question_path(@team.round.questions[0])
        # else 
        #     render :new
        # end
    end


    private

    def team_params
        params.require(:team).permit(:round_id, :team_name)
    end

end
