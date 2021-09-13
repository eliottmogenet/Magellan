class ChangesOnDatas < ActiveRecord::Migration[6.0]
  def change
    add_column :matchings, :level, :integer
    add_column :previous_experiences, :started_at, :string
    add_column :previous_experiences, :end_at, :string
    add_column :previous_experiences, :team_size, :string
    add_column :previous_experiences, :fundraising, :string
    add_column :employers, :description, :text
    add_column :employers, :funding_stage, :string
    add_column :employers, :industry, :string
    add_column :users, :university, :string
    add_column :users, :relocation_possible, :boolean, :default => false
  end
end
