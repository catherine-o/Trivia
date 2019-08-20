class TeamAnswersController < ApplicationController

    def new
        @team_answer = TeamAnswer.new
    end
end
