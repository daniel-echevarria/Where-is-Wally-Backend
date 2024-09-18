class RenamexCoordinateToXInPersonages < ActiveRecord::Migration[7.2]
  def change
    rename_column :personages, :xCoordinate, :x
    rename_column :personages, :yCoordinate, :y
  end
end
