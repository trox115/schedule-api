class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :name
      t.string :start
      t.string :end
      t.string :transaction

      t.timestamps
    end
  end
end
