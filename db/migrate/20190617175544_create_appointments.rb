class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :duration
      t.string :type
      t.integer :date
      t.integer :time
      t.integer :case_id
      t.integer :lawyer_id

      t.timestamps
    end
  end
end
