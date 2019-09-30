class AddNamesToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :names, :string
  end
end
