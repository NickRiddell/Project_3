class CreateTasteProfiles < ActiveRecord::Migration
  def change
    create_table :taste_profiles do |t|
      t.integer :value1
      t.integer :value2
      t.integer :value3
      t.integer :value4
      t.integer :value5

      t.timestamps null: false
    end
  end
end
