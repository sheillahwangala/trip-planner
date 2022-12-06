class Trip < ApplicationRecord
    has_many :stopovers
    has_many :destinations, through: :stopovers
    belongs_to :user
end
