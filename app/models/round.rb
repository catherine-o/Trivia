class Round < ApplicationRecord
    has_many :teams, through: :teams_answers
    has_many :questions, through: :rounds_questions
end
