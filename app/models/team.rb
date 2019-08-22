class Team < ApplicationRecord
    belongs_to :round
    has_many :answers
    validates :team_name, presence: true, uniqueness: true
end
