class Character < ApplicationRecord
    belongs_to :adventure
    has_one :stat
    has_one :race
    has_many :weapons
    has_many :armors
    has_many :items
    has_many :spells
    has_many :skills
end
