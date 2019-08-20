class AddNameToRounds < ActiveRecord::Migration[5.2]
  def change
    add_column :rounds, :name, :string
  end
end
