class EmployedMoreThanOneYear < ActiveRecord::Migration[6.0]
  def change
    add_column :employers, :employed_more_than_one_year, :boolean
  end
end
