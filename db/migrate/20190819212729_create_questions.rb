class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :point_value
      t.string :category
      t.string :question_text
      t.string :difficulty

      t.timestamps
    end
  end
end
