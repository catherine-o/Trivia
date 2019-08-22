class Scoreboard < ApplicationRecord
    has_many :teams
    has_many :rounds



    def show_team_names
        names = []
            self.teams.each do |team|
                names << team.team_name
            end
        names
    end

    def show_team_scores
        scores = []
            self.teams.each do |team|
                scores << team.score
            end
        scores
    end


end
