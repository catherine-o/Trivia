class AnswersController < ApplicationController

    def create
        @answer = Answer.create(answer_params)
        if @answer.save
            
        else
            render :new
        end
    end


    private

    def answer_params
        params.require(:answer).permit(:text, :question_id)
    end

end
