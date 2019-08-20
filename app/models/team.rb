class Team < ApplicationRecord
    has_many :answers, through: :teams_answers
    has_many :questions, through: :teams_answers
    has_many :rounds, through: :teams_answers
    validates :team_name, presence: true, uniqueness: true
end
