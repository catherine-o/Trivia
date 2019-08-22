class Team < ApplicationRecord
    belongs_to :round
    has_many :answers
    belongs_to :scoreboard
    validates :team_name, presence: true, uniqueness: true
end
