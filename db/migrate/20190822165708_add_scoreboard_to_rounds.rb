class AddScoreboardToRounds < ActiveRecord::Migration[5.2]
  def change
    add_reference :rounds, :scoreboard, foreign_key: true
  end
end
