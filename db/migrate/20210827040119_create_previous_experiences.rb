class CreatePreviousExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :previous_experiences do |t|

      t.timestamps
    end
  end
end
