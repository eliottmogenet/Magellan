class AddRelationsToUserCodingPractice < ActiveRecord::Migration[6.0]
  def change
    add_reference :user_coding_practices, :user, foreign_key: true
    add_reference :user_coding_practices, :coding_practice, foreign_key: true
  end
end
