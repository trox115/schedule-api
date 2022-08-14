class AddConfirmedToSchedules < ActiveRecord::Migration[7.0]
  def change
    add_column :schedules, :confirmed, :boolean, default:false
    add_column :schedules, :email, :string
  end
end
