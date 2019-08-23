class AnswersController < ApplicationController

    def index
        @answers = Answer.all
    end

    def create
        @answer = Answer.new(answer_params)
        # next_question = Question.all.where(category: "#{@answer.question.category}").sample
        if @answer.valid?
            @answer.save
            if @answer.text.downcase.strip == @answer.question.answer.downcase
                redirect_to team_path(@answer.team)
                @answer.team.increment!('score', @answer.question.point_value)
                flash[:correct] = "Correct! You get #{@answer.question.point_value} points!"
            elsif @answer.text.downcase.strip != @answer.question.answer.downcase
                redirect_to team_path(@answer.team)
                @answer.team.update_attribute('score', @answer.team.score-5)
                flash[:wrong] = "Wrong! You lose 5 points! The correct answer was #{@answer.question.answer}."
            end
            
        else
            redirect_to team_path(@answer.team)
            @answer.team.update_attribute('score', @answer.team.score-2)
            flash[:msg] = "Please provide an answer. You lose 2 points."
        end
    end

    def show
        @answer = Answer.find(params[:id])
    end

    private

    def answer_params
        params.require(:answer).permit(:text, :team_id, :question_id)
    end

end
