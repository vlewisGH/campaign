class StatEffect < ApplicationRecord
    belongs_to :game
    belongs_to :armor
    belongs_to :item
    belongs_to :skill
    
end
