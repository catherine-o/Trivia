class AddScoreboardToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :scoreboard, foreign_key: true
  end
end
