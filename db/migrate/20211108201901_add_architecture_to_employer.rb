class AddArchitectureToEmployer < ActiveRecord::Migration[6.0]
  def change
    add_column :employers, :architecture, :text
    add_column :employers, :dev_ops, :text
  end
end
