class ModifyUserTable < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :customer, foreign_key: true
    add_reference :users, :country, foreign_key: true
  end
end
