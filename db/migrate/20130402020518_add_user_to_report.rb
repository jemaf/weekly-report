class AddUserToReport < ActiveRecord::Migration
  def change
    add_column :reports, :user_id, :integer
    remove_column :reports, :name
  end
end
