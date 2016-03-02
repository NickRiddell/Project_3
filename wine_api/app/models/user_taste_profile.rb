class UserTasteProfile < ActiveRecord::Base
    belongs_to :user
    validates :value1, presence: true
    validates :value2, presence: true
    validates :value3, presence: true
    validates :value4, presence: true
    validates :value5, presence: true
end
