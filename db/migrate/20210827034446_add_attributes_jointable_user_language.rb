class AddAttributesJointableUserLanguage < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_speaking_languages, :user, foreign_key: true
    add_reference :user_speaking_languages, :speaking_language, foreign_key: true
    add_column :user_speaking_languages, :level, :string
    add_column :user_speaking_languages, :country, :string
  end
end
