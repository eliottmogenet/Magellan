class EmployerStackText < ActiveRecord::Migration[6.0]
  def change
    add_column :employers, :employer_backend_stack, :text
    add_column :employers, :employer_frontend_stack, :text
    add_column :employers, :tools, :text
  end
end
