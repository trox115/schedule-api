class ChangeField < ActiveRecord::Migration[7.0]
  def change
    rename_column :schedules, :transaction, :userid

  end
end
