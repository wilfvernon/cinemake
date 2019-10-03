class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.integer :friender_id
      t.integer :friendee_id
      t.string :status

      t.timestamps
    end
  end
end
