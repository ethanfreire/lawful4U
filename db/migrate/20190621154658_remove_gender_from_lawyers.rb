class RemoveGenderFromLawyers < ActiveRecord::Migration[5.2]
  def change
    remove_column :lawyers, :gender, :string
  end
end
