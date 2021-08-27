class AddAttributeToReq < ActiveRecord::Migration[6.0]
  def change
    add_column :reqs, :title, :string
    add_column :reqs, :salary_range, :integer
    add_reference :reqs, :customer, foreign_key: true
  end
end
