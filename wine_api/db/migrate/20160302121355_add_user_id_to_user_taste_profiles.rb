class AddUserIdToUserTasteProfiles < ActiveRecord::Migration
  def change
    add_column :user_taste_profiles, :user_id, :integer
  end
end
