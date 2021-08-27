class CreateUserSpeakingLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :user_speaking_languages do |t|

      t.timestamps
    end
  end
end
