class CreateFamilymembers < ActiveRecord::Migration
  def change
    create_table :familymembers do |t|
      t.string :name 
      t.string :relationship 
      t.date :birthdate 
      t.integer :user_id 
    end 
  end
end
