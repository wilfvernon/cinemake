class CreateNames < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :birthday
      t.integer :gender_id
      t.string :place_of_birth
      t.string :bio

      t.timestamps
    end
  end
end
