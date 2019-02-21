class DamageEffect < ApplicationRecord
    belongs_to :game
    belongs_to :weapon
end
