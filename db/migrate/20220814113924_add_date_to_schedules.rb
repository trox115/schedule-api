class AddDateToSchedules < ActiveRecord::Migration[7.0]
  def change
    add_column :schedules, :date, :datetime
  end
end
