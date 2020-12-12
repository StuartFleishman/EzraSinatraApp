class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table :familymembers, :family_members 
  end
end
