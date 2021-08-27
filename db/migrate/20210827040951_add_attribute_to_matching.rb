class AddAttributeToMatching < ActiveRecord::Migration[6.0]
  def change
    add_reference :matchings, :user, foreign_key: true
    add_reference :matchings, :req, foreign_key: true
    add_column :matchings, :matching_description, :text
    add_column :matchings, :timezone_overlap, :integer
    add_column :matchings, :wage_dif, :integer
    add_column :matchings, :status, :string
    add_column :matchings, :rate, :integer
    add_column :matchings, :comment, :text
    add_column :matchings, :message_content, :text
  end
end
