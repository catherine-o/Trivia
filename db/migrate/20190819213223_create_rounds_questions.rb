class CreateRoundsQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds_questions do |t|
      t.references :question, foreign_key: true
      t.references :round, foreign_key: true

      t.timestamps
    end
  end
end
