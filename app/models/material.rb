class Material < ApplicationRecord
    belongs_to :game
    belongs_to :weapon
    belongs_to :armor
    belongs_to :item
end
