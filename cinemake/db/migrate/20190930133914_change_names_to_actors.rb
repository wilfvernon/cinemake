class ChangeNamesToActors < ActiveRecord::Migration[6.0]
  def change
    rename_table :names, :actors
  end
end
