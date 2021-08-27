class AddAttributeToUserStack < ActiveRecord::Migration[6.0]
  def change
    add_reference :stacks, :user, foreign_key: true
    add_reference :stacks, :stack, foreign_key: true
    add_column :stacks, :able_to_learn, :boolean
    add_column :stacks, :years_xp, :integer
  end
end
