class AddNameToScores < ActiveRecord::Migration[7.2]
  def change
    add_column :scores, :name, :string
  end
end
