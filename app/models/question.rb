class Question < ApplicationRecord

    has_many :answers
    has_many :teams, through: :teams_answers
    has_many :rounds, through: :rounds_questions

    



end
