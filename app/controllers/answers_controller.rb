class AnswersController < ApplicationController

    def index
        @answers = Answer.all
    end

    def create
        @answer = Answer.new(answer_params)
        next_question = Question.all.where(category: "#{@answer.question.category}").sample
        if @answer.valid?
            @answer.save
            if @answer.text.downcase.strip == @answer.question.answer.downcase
                redirect_to question_path(next_question)
                flash[:msg] = "Correct! You get #{@answer.question.point_value} points!"
            elsif @answer.text.downcase.strip != @answer.question.answer.downcase
                redirect_to question_path(next_question)
                flash[:msg] = "Wrong! You get NOTHING! The correct answer was #{@answer.question.answer}."
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
