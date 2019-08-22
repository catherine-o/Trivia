class RoundsController < ApplicationController

    def index
        @rounds = Round.all 
    end

    def show
        @round = Round.find(params[:id])
        @team = Team.new
        # byebug
    end

end
