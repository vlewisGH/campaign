class Race < ApplicationRecord
    belongs_to :game
    belongs_to :character
end
