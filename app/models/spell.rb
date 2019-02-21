class Spell < ApplicationRecord
    belongs_to :game
    belongs_to :character
    has_many :damage_effects
end
