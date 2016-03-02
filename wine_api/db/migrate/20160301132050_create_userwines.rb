class CreateUserwines < ActiveRecord::Migration
  def change
    create_table :userwines do |t|
      t.integer :user_id
      t.integer :wine_id
      t.text :notes

      t.timestamps null: false
    end
  end
end
