class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :address
      t.integer :attorney_fee

      t.timestamps
    end
  end
end
