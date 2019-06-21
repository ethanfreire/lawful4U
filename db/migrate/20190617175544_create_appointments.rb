class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :duration
      t.datetime :datetime
      t.string :appointment_type
      t.integer :case_id

      t.timestamps
    end
  end
end
