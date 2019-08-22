class AddTeamToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :answers, :team, foreign_key: true
  end
end
