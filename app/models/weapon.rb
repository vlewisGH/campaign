class Weapon < ApplicationRecord
    belongs_to :game
    belongs_to :character
    has_one :weapon_class
    has_one :material
    has_one :icon
    has_many :damage_effects
end
