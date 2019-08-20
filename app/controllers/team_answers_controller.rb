class TeamAnswersController < ApplicationController

    def index
        @team_answers = TeamAnswer.all
    end

    def new
        @team_answer = TeamAnswer.new
        @question = Question.find(params[:question_id])
    end

    def create
        @team_answer = TeamAnswer.create(team_answer_params)
        redirect_to answers_path
    end

    def show
        @team_answer = TeamAnswer.find(params[:id])
    end

    private

    def team_answer_params
        params.require(:team_answer).permit(:text, :question_id)
    end
end
