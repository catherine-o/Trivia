class TeamAnswersController < ApplicationController

    def new
        @team_answer = TeamAnswer.new
        @question = Question.find(params[:question_id])
    end

    def create
        @team_answer = TeamAnswer.new(team_answer_params)
       
        # if @team_answer.save
            
            redirect_to team_answer_path(@team_answer)
        # else 
        #     render :new
        # end
    end

    def show
        @team_answer = TeamAnswer.find_by(params[:id])
    end

    private

    def team_answer_params
        params.require(:team_answer).permit(:text, :question_id)
    end
end
