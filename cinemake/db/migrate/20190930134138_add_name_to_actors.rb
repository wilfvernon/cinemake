class AddNameToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :name, :string
  end
end
