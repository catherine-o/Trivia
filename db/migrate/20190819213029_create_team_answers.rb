class CreateTeamAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :team_answers do |t|
      t.references :team,  foreign_key: true
      t.references :answer, foreign_key: true
      t.references :question, foreign_key: true
      t.references :round, foreign_key: true

      t.timestamps
    end
  end
end
