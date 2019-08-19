class Answer < ApplicationRecord
  belongs_to :question
  has_many :teams, through: :team_answers
end
