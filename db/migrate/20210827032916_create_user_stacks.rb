class CreateUserStacks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_stacks do |t|

      t.timestamps
    end
  end
end
