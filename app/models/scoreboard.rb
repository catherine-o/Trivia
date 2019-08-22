class Scoreboard < ApplicationRecord
    has_many :teams
    has_many :rounds

    def all_team_names
        teams = []
        self.teams.each do |team|
            teams << team.team_name 
        end
        teams
    end
    

    def all_team_names_and_scores
        namescore = []
        self.teams.each do |team|
            namescore << "#{team.team_name}: #{team.score}"
        end 
        namescore
    end

    def winner
        max_score = Team.all.maximum(:score)
        win = Team.all.find_by(score: max_score)
        win.team_name
    end

    def loser
        min_score = Team.all.minimum(:score)
        lose = Team.all.find_by(score: min_score)
        lose.team_name
    end

    def music_winner
        teams = self.teams.where(round_id: 1)
        max = teams.all.maximum(:score)
        win = teams.all.find_by(score: max)
        win.team_name
    end
    
    def music_loser
        teams = self.teams.where(round_id: 1)
        min = teams.all.minimum(:score)
        lose = teams.all.find_by(score: min)
        lose.team_name
    end

    def music_average_score
        teams = self.teams.where(round_id: 1)
        teams.average(:score).to_f
    end
    
    def general_winner
        teams = self.teams.where(round_id: 2)
        max = teams.all.maximum(:score)
        win = teams.all.find_by(score: max)
        win.team_name
    end
    
    def general_loser
        teams = self.teams.where(round_id: 2)
        min = teams.all.minimum(:score)
        lose = teams.all.find_by(score: min)
        lose.team_name
    end

    def general_average_score
        teams = self.teams.where(round_id: 2)
        teams.average(:score).to_f
    end
    
    def computer_winner
        teams = self.teams.where(round_id: 3)
        max = teams.all.maximum(:score)
        win = teams.all.find_by(score: max)
        win.team_name
    end
    
    def computer_loser
        teams = self.teams.where(round_id: 3)
        min = teams.all.minimum(:score)
        lose = teams.all.find_by(score: min)
        lose.team_name
    end
    
    def computer_average_score
        teams = self.teams.where(round_id: 3)
        teams.average(:score).to_f
    end

    def tv_winner
        teams = self.teams.where(round_id: 4)
        max = teams.all.maximum(:score)
        win = teams.all.find_by(score: max)
        win.team_name
    end
    
    def tv_loser
        teams = self.teams.where(round_id: 4)
        min = teams.all.minimum(:score)
        lose = teams.all.find_by(score: min)
        lose.team_name
    end

    def tv_average_score
        teams = self.teams.where(round_id: 4)
        teams.average(:score).to_f
    end
   
    def geo_winner
        teams = self.teams.where(round_id: 5)
        max = teams.all.maximum(:score)
        win = teams.all.find_by(score: max)
        win.team_name
    end
    
    def geo_loser
        teams = self.teams.where(round_id: 5)
        min = teams.all.minimum(:score)
        lose = teams.all.find_by(score: min)
        lose.team_name
    end

    def geo_average_score
        teams = self.teams.where(round_id: 5)
        teams.average(:score).to_f
    end

end
