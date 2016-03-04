class Userwine < ActiveRecord::Base
    belongs_to :user
    belongs_to :wine
    validates :user_id, presence: true
    validates :wine_id, presence: true
end
