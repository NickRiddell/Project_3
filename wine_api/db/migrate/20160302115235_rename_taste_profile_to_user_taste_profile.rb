class RenameTasteProfileToUserTasteProfile < ActiveRecord::Migration
 def change
   rename_table :taste_profiles, :user_taste_profiles
 end
end
