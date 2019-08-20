class AddTextToTeamAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :team_answers, :text, :string
  end
end
