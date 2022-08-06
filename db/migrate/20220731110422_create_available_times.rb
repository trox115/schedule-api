class CreateAvailableTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :available_times do |t|
      t.string :name
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
