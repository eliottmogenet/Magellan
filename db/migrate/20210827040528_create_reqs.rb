class CreateReqs < ActiveRecord::Migration[6.0]
  def change
    create_table :reqs do |t|

      t.timestamps
    end
  end
end
