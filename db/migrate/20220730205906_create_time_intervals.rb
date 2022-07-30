class CreateTimeIntervals < ActiveRecord::Migration[7.0]
  def change
    create_table :time_intervals do |t|
      t.string :label
      t.integer :value
      t.integer :price

      t.timestamps
    end
  end
end
