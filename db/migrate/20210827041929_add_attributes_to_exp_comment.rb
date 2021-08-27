class AddAttributesToExpComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :experience_comments, :matching, foreign_key: true
    add_reference :experience_comments, :previous_experience, foreign_key: true
    add_column :experience_comments, :comment, :string
  end
end
