class Team < ApplicationRecord
    belongs_to :round
    validates :team_name, presence: true, uniqueness: true
end
