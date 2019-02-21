class Map < ApplicationRecord
    belongs_to :game
    has_many :icons, dependent: :destroy
end
