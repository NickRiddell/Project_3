class Wine < ActiveRecord::Base
    has_many :userwines
    has_many :users, :through => :userwines
    validates :name, presence: true, uniqueness: true
    validates :grape, presence: true
    validates :year, presence: true
end
