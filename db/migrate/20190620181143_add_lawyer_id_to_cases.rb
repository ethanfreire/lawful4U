class AddLawyerIdToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :lawyer_id, :integer
  end
end
