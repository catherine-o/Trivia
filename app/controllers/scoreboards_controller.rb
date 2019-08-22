class ScoreboardsController < ApplicationController

    def show
        @scoreboard = Scoreboard.find(params[:id])
    end

end
