class AddNewJobs < ActiveRecord::Migration[6.0]
  def change
        add_column :users, :next_jobs, :string
        add_column :users, :active, :boolean, :default => false
        add_column :countries, :other_benefits, :string
        remove_column :users, :level
  end
end
