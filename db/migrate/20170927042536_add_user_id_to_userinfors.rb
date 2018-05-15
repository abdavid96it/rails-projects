class AddUserIdToUserinfors < ActiveRecord::Migration[5.1]
  def change
    add_column :userinfors, :user_id, :integer
  end
end
