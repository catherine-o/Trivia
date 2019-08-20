class RoundsController < ApplicationController

    def index
        @rounds = Round.all 
    end

    def show
        @round = Round.find_by(params[:id])
    end

    
end
