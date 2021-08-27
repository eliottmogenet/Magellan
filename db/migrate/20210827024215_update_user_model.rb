class UpdateUserModel < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :tech_recruiter, :boolean
    add_column :users, :job, :string
    add_column :users, :level, :integer
    add_column :users, :citizenship, :string
    add_column :users, :current_employer, :string
    add_column :users, :expected_wage, :integer
    add_column :users, :timezone, :string
    add_column :users, :city, :string
    add_column :users, :status, :string
    add_column :users, :linkedin_profile, :string
    add_column :users, :github_profile, :string
    add_column :users, :full_remote_only, :boolean
    add_column :users, :contractor_possible, :boolean
  end
end
