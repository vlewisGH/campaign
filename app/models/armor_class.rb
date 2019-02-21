class ArmorClass < ApplicationRecord
    belongs_to :game
    belongs_to :armor
end
