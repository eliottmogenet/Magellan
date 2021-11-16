class Employed2 < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :employed_more_than_one_year, :boolean
  end
end
