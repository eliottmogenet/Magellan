class ChangeAreaMedian < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :area_median_wage, :string
    remove_column :countries, :area_median_wage
  end
end
