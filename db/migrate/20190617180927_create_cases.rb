class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :title
      t.string :type
      t.string :status
      t.integer :client_id

      t.timestamps
    end
  end
end
