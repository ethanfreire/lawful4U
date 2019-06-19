class AddUserIdToLawyers < ActiveRecord::Migration[5.2]
  def change
    add_column :lawyers, :user_id, :integer

  end
end
