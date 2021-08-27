class CreateSpeakingLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :speaking_languages do |t|
      t.string :name

      t.timestamps
    end
  end
end
