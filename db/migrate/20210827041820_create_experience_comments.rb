class CreateExperienceComments < ActiveRecord::Migration[6.0]
  def change
    create_table :experience_comments do |t|

      t.timestamps
    end
  end
end
