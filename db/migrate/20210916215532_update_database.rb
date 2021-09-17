class UpdateDatabase < ActiveRecord::Migration[6.0]
  def change
    remove_column :countries, :share_package
    remove_column :users, :active
    remove_column :users, :current_employer
    add_column :employers, :challenges, :text
  end
end
