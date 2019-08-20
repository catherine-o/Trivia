class AnswersController < ApplicationController

    def index
        @answers = Answer.all
    end

    def create
        @answer = Answer.new(answer_params)
        if @answer.valid?
            @answer.save
            # byebug
            redirect_to question_path(@answer.question_id)
        else
            redirect_to question_path(@answer.question_id)
        end
    end

    def show
        @answer = Answer.find(params[:id])
    end

    private

    def answer_params
        params.require(:answer).permit(:text, :question_id)
    end

end
