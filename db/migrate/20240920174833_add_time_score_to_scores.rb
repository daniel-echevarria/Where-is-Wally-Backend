class AddTimeScoreToScores < ActiveRecord::Migration[7.2]
  def change
    add_column :scores, :time_score, :string
  end
end
