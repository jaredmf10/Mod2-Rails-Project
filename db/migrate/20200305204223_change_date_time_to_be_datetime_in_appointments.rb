class ChangeDateTimeToBeDatetimeInAppointments < ActiveRecord::Migration[6.0]
  def change
    change_column :appointments, :date_time, :datetime 
  end
end
