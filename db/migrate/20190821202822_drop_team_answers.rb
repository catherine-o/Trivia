class DropTeamAnswers < ActiveRecord::Migration[5.2]
  def change
    drop_table :team_answers
  end
end
