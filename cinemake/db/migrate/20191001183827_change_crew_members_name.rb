class ChangeCrewMembersName < ActiveRecord::Migration[6.0]
  def change
    rename_column :crew_members, :names, :name
  end
end
