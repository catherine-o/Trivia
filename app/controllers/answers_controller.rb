class AnswersController < ApplicationController

    def index
        @answers = Answer.all
    end

    def create
        @answer = Answer.new(answer_params)
        if @answer.valid?
            @answer.save
            if @answer.text == @answer.question.answer
                redirect_to question_path(@answer.question)
                flash[:msg] = "Correct!"
            elsif @answer.text != @answer.question.answer
                redirect_to question_path(@answer.question)
                flash[:msg] = "Wrong!"
            elsif @answer.text == nil
            end
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
