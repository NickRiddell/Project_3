class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.text :name
      t.text :grape
      t.integer :year

      t.timestamps null: false
    end
  end
end
