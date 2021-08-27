class CreateUserCodingPractices < ActiveRecord::Migration[6.0]
  def change
    create_table :user_coding_practices do |t|

      t.timestamps
    end
  end
end
