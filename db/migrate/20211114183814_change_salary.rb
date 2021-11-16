class ChangeSalary < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :expected_wage
    add_column :users, :expected_wage, :string
  end
end
