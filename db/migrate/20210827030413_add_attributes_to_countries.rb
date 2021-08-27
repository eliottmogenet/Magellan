class AddAttributesToCountries < ActiveRecord::Migration[6.0]
  def change
      add_column :countries, :name, :string
      add_column :countries, :area_median_wage, :integer
      add_column :countries, :notice_period, :string
      add_column :countries, :share_package, :string
      add_column :countries, :healthcare, :string
  end
end
