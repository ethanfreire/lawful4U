class CreateLawyerCases < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyer_cases do |t|
      t.integer :case_id
      t.integer :lawyer_id

      t.timestamps
    end
  end
end
