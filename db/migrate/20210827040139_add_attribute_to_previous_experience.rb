class AddAttributeToPreviousExperience < ActiveRecord::Migration[6.0]
  def change
    add_reference :previous_experiences, :user, foreign_key: true
    add_reference :previous_experiences, :employer, foreign_key: true
    add_column :previous_experiences, :number, :integer
    add_column :previous_experiences, :description, :text
  end
end
