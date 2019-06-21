class RemoveEmailFromLawyers < ActiveRecord::Migration[5.2]
  def change
    remove_column :lawyers, :email, :string
  end
end
