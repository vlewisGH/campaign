class Armor < ApplicationRecord
    belongs_to :game
    belongs_to :character
    has_one :armor_class
    has_one :material
    has_many :stat_effects
end
