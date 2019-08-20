class QuestionsController < ApplicationController

    def index
        @question = Question.new
        @question_one = @question.get_question
    end
end
