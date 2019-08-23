class TeamsController < ApplicationController

    def index
        @teams = Team.all 
    end

    def show
        @team = Team.find(params[:id])
        @answer = Answer.new
    end

    def new
        @team = Team.new
    end

    def create 
        @team = Team.create(team_params)
        if @team.save
        # byebug
            redirect_to team_path(@team)
            # question_path(@team.round.questions[0])
        else 
            redirect_to rounds_path
            flash[:msg] = "Sorry that name is already taken."

        end
    end

    def update
        @team = Team.find(params[:id])
        @team.update
        if @team.save
                redirect_to team_path(@team)
            else 
                redirect_to rounds_path
                flash[:msg] = "Sorry that name is already taken."
    
            end
    end


    private

    def team_params
        params.require(:team).permit(:round_id, :team_name, :score, :scoreboard_id)
    end

end
