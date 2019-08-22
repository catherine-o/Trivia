class Scoreboard < ApplicationRecord
    has_many :teams
    has_many :rounds

    def show_all_team_scores
        namescore = []
        self.teams.each do |team|
            namescore << "#{team.team_name}: #{team.score}"
        end 
        namescore
    end

    


end
