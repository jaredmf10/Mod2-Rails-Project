class ChangeDateTimeToBeStringAppointments < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :date_time, :string
  end
end
