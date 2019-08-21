class AddIncorrectAnswerToQuestion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :incorrect_answer, :string
  end
end
