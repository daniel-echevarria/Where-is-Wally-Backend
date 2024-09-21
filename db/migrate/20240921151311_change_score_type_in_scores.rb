class ChangeScoreTypeInScores < ActiveRecord::Migration[7.2]
  def change
    change_column :scores, :time_score, :decimal, using: 'time_score::numeric'
  end
end
