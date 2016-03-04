class Wine < ActiveRecord::Base
    has_one :wine_taste_profile, dependent: :destroy
    has_many :userwines
    has_many :users, :through => :userwines
    validates :name, presence: true, uniqueness: true
    validates :grape, presence: true
    validates :year, presence: true
end
