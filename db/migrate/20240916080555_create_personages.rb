class CreatePersonages < ActiveRecord::Migration[7.2]
  def change
    create_table :personages do |t|
      t.string :name
      t.integer :xCoordinate
      t.integer :yCoordinate

      t.timestamps
    end
  end
end
