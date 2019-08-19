class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :correct_answers
      t.integer :score

      t.timestamps
    end
  end
end
