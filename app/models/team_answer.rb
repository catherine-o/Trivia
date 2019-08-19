class TeamAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :question
  belongs_to :round
  belongs_to :team
end
