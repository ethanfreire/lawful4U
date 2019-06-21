class AddGenderToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :gender, :string
  end
end
