class Skill < ApplicationRecord
    belongs_to :game
    belongs_to :character
    has_many :stat_effects
end
