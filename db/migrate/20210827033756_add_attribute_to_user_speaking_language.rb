class AddAttributeToUserSpeakingLanguage < ActiveRecord::Migration[6.0]
  def change
    remove_reference :stacks, :user, foreign_key: true
    remove_reference :stacks, :stack, foreign_key: true
    remove_column :stacks, :able_to_learn, :boolean
    remove_column :stacks, :years_xp, :integer
    add_reference :user_stacks, :user, foreign_key: true
    add_reference :user_stacks, :stack, foreign_key: true
    add_column :user_stacks, :able_to_learn, :boolean
    add_column :user_stacks, :years_xp, :integer
  end
end
