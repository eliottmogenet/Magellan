class ChangeDatabase < ActiveRecord::Migration[6.0]
  def change

    remove_column :previous_experiences, :team_size
    remove_column :previous_experiences, :us_company_xp
    remove_column :previous_experiences, :b2c
    remove_column :previous_experiences, :smb_customers
    remove_column :previous_experiences, :entreprise_customers
    remove_column :previous_experiences, :microservices
    remove_column :previous_experiences, :high_volume_data
    remove_column :previous_experiences, :small_team_xp
    remove_column :previous_experiences, :scale_up_xp


    add_column :employers, :team_size, :string
    add_column :employers, :eng_team_size, :string
    add_column :employers, :last_funding_amount, :string
    add_column :employers, :small_team_xp, :boolean, :default => false
    add_column :employers, :scale_up_xp, :boolean, :default => false
    add_column :employers, :us_company_xp, :boolean, :default => false
    add_column :employers, :b2c, :boolean, :default => false
    add_column :employers, :smb_customers, :boolean, :default => false
    add_column :employers, :entreprise_customers, :boolean, :default => false
    add_column :previous_experiences, :microservices, :boolean, :default => false
    add_column :previous_experiences, :high_volume_data, :boolean, :default => false

    add_column :users, :total_years_xp, :integer
    add_column :users, :type, :string
  end
end
