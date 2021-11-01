class ChangeUserAttributes < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :competitive_profile, :text
    add_column :previous_experiences, :employed_more_than_one_year, :boolean
    add_column :previous_experiences, :us_company_xp, :boolean
    add_column :previous_experiences, :b2c, :boolean
    add_column :previous_experiences, :smb_customers, :boolean
    add_column :previous_experiences, :entreprise_customers, :boolean
    add_column :previous_experiences, :microservices, :boolean
    add_column :previous_experiences, :high_volume_data, :boolean
    add_column :previous_experiences, :small_team_xp, :boolean
    add_column :previous_experiences, :scale_up_xp, :boolean
  end
end
